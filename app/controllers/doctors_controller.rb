class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    set_doctor
  end

  def new

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end
  private 

    def set_doctor
      @doctor = Doctor.find(params[:id]) 
    end 
end
