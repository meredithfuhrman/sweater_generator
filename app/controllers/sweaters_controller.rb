class SweatersController < ApplicationController
  def index
    @sweaters = Sweater.all
    @new_sweater = Sweater.new
    @new_swatch = Swatch.new
    @new_measurement = Measurement.new
  end

  def create
    @sweater = Sweater.create(sweater_params)
    @sweater[:user_id] = current_user.id
    if @sweater.save
      flash[:notice] = "Sweater added!"
      redirect_to sweater_path(@sweater)
    else
      flash[:notice] = "Try again"
      redirect_to :back
    end
  end

  def show
    @sweater = Sweater.find(params[:id])
    @swatch = @sweater.swatch.stitches_per_inch
    @chest = @sweater.measurement.chest_circumference
    @pattern = @sweater.pattern.id
    @needles = @sweater.swatch.needle_size
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "sweater_pattern"
      end
    end
  end

  def edit
    @sweater = Sweater.find(params[:id])
  end

  def update
    @sweater = Sweater.find(params[:id])
    if @sweater.update_attributes(sweater_params)
      flash[:notice] = "Swatch Updated!"
      redirect_to sweaters_path
    else
      flash[:notice] = "Try again"
      redirect_to :back
    end
  end

  def destroy
    Sweater.find(params[:id]).destroy
    flash[:notice] = "Sweater Deleted"
    redirect_to sweaters_path
  end

  def download
    @sweater = Sweater.find(params[:id])
    @swatch = @sweater.swatch.stitches_per_inch
    @chest = @sweater.measurement.chest_circumference
    @pattern = @sweater.pattern.id
    @needles = @sweater.swatch.needle_size

    html = render_to_string "show"
    pdf = WickedPdf.new.pdf_from_string(html)
    send_data(pdf,
      :filename    => "#{@sweater.name}.pdf",
      :disposition => 'attachment')
  end

  protected
  def sweater_params
    params.require(:sweater).permit(:user_id, :name, :swatch_id,
                                     :measurement_id, :pattern_id)
  end
end
