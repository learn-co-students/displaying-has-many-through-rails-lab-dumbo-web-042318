class Appointment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient

  def datetime_format
    # datetime =
    self.appointment_datetime.strftime('%B %e, %Y at %k:%M')
    # datetime.strftime('%B %e, %Y')
  end
end
