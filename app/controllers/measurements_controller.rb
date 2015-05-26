class MeasurementsController < ApplicationController
  def index
    @measurements = Measurement.all
    @new_measurement = Measurement.new
  end

  def create
    @measurement = Measurement.create(measurement_params)
    if @measurement.save
      respond_to do |format|
        format.html do
          flash[:notice] = "Measurement added!"
          redirect_to measurements_path
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

  def edit
    @measurement = Measurement.find(params[:id])
  end

  def update
    @measurement = Measurement.find(params[:id])
    if @measurement.update_attributes(measurement_params)
      flash[:notice] = "Swatch Updated!"
      redirect_to measurements_path
    else
      flash[:notice] = "Try again"
      redirect_to :back
    end
  end

  def destroy
    Measurement.find(params[:id]).destroy
    flash[:notice] = "Measurement Deleted"
    redirect_to measurements_path
  end

  protected
  def measurement_params
    params.require(:measurement).permit(:name, :chest_circumference)
  end
end
