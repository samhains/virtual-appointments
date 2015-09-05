class User < ActiveRecord::Base
  belongs_to :appointment
  validates_presence_of :name, :email

  def queue_reminder
    cancel_reminder if reminder_job_id
    appointment_time = appointment.date
    self.reminder_job_id = AppMailer.delay_until(appointment_time-1.hour).send_reminder_mail(self, appointment)
  end

  def cancel_reminder
    Sidekiq::Status.cancel reminder_job_id
  end
end
