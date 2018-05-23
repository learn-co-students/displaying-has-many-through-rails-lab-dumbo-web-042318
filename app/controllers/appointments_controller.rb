class AppointmentsController < ApplicationController

  def index
    @appointments = Appointment.all
  end


  def show
    @appointment = appt
    @patient = @appointment.patient
    @doctor = @appointment.doctor
  end

  private

  def appt
    Appointment.find(params[:id])
  end


end
