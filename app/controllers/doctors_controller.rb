class DoctorsController < ApplicationController

  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = doc
    @patients = @doctor.patients
    @appointments = @doctor.appointments
  end

  private

  def doc
    Doctor.find(params[:id])
  end

  def doc_params
    #params.require("doctor").permit("name")
  end



end
