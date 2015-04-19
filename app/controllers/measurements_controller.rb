class MeasurementsController < ApplicationController
  def index
    @measurements = Measurement.all
    @new_measurement = Measurement.new
  end

  def create
    @measurement = Measurement.create(measurement_params)
    if @measurement.save
      flash[:notice] = "Measurement added!"
      redirect_to measurements_path
    else
      flash[:notice] = "Try again"
      redirect_to :back
    end
  end

  protected
  def measurement_params
    params.require(:measurement).permit(:name, :chest_circumference)
  end
end
