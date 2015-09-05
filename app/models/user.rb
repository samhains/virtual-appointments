class User < ActiveRecord::Base
  belongs_to :appointment
  validates_presence_of :name, :email

  def queue_reminder
    cancel_reminder if reminder_job_id
    appointment_time = appointment.date
    self.reminder_job_id = AppMailer.delay_until(5.seconds.from_now).send_reminder_mail(self, appointment)
  end

  def cancel_reminder
    Sidekiq::Status.cancel reminder_job_id
  end
end
