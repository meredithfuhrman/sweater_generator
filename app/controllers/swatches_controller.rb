class SwatchesController < ApplicationController
  def index
    @swatches = Swatch.all
    @new_swatch = Swatch.new
  end

  def create
    @swatch = Swatch.create(swatch_params)
    if @swatch.save
      respond_to do |format|
        format.html do
          flash[:notice] = "Swatch added!"
          redirect_to swatches_path
        end
        format.js do
          render :create
        end
      end
    else
      flash[:notice] = "Try again"
      redirect_to :back
    end
  end

  def destroy
    Swatch.find(params[:id]).destroy
    flash[:notice] = "Swatch Deleted"
    redirect_to swatches_path
  end

  protected
  def swatch_params
    params.require(:swatch).permit(:stitches_per_inch, :needle_size, :name)
  end
end
