class DoctorsController < ApplicationController

  before_action :find_doctor, only: [:show, :update]

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def show
  end

  def update
    @doctor.update(doctor_params)
    redirect_to doctor_path(@doctor)
  end

  def create
    @doctor = Doctor.create(doctor_params)

    redirect_to doctor_path(@doctor)
  end

  private

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end

end
