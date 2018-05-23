class PatientsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = pat
    @appointments = @patient.appointments
  end

  private

  def pat
    Patient.find(params[:id])
  end

end
