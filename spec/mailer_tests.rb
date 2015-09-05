Sidekiq::Testing.fake! # fake is the default mode
Sidekiq::Testing.inline!
Sidekiq::Testing.disable!


#Sidekiq::Testing.inline! do
  #@user = User.create(name: 'Sam', email: 'sdh@eml.cc')
  #@appointment= Appointment.create(date: 1.day.from_now, capacity: 5, attending: 0)
  #@user.appointment = @appointment
  #assert_equal 0, Sidekiq::Extensions::DelayedMailer.jobs.size
  #@user.queue_reminder
  #assert_equal 1, Sidekiq::Extensions::DelayedMailer.jobs.size
#end

