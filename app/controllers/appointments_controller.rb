class AppointmentsController < ApplicationController

  before_action :find_appointment, only: [:show, :update]

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new
  end

  def show
  end

  def update
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def create
    @appointment = Appointment.create(appointment_params)

    redirect_to appointment_path(@appointment)
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:datetime, :doctor_id, :patient_id)
  end


end
