class AppMailer < ActionMailer::Base
  def send_welcome_mail(user)
    @user = user
    mail to: user.email, from: "info@2002.gallery", subject: "Welcome to 2022.gallery!"
  end

  def send_reminder_mail(user, appointment)
    @user = user
    @appointment = appointment
    mail to: user.email, from: "info@2002.gallery", subject: "2022.gallery : appointment reminder"
  end
end
