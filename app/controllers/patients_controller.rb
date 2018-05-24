class PatientsController < ApplicationController
  def index 
    @patients = Patient.all
  end 

  def show 
    set_patient
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

    def set_patient
      @patient = Patient.find(params[:id])
    end

end
