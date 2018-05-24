class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def nice_time 

    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
    # January 12, 2016 at 3:00".
  end 
end
