class SweatersController < ApplicationController
  def index
    @sweaters = Sweater.all
    @new_sweater = Sweater.new
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
  end

  protected
  def sweater_params
    params.require(:sweater).permit(:user_id, :name, :swatch_id,
                                     :measurement_id, :pattern_id)
  end
end
