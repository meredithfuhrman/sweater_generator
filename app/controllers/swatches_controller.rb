class SwatchesController < ApplicationController
  def index
    @swatches = Swatch.all
    @new_swatch = Swatch.new
  end

  def create
    @swatch = Swatch.create(swatch_params)
    if @swatch.save
      flash[:notice] = "Swatch added!"
      redirect_to swatches_path
    else
      flash[:notice] = "Try again"
      redirect_to :back
    end
  end

  protected
  def swatch_params
    params.require(:swatch).permit(:stitches_per_inch, :needle_size, :name)
  end
end
