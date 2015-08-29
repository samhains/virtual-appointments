class RelationshipsController < ApplicationController
  before_action :require_user, only: [:create]
  def create
    @appointment = Appointment.find(params[:appointment_id])
    @user = current_user
    return render json: Appointment.all if  @user.appointment == @appointment
    if @user.appointment
      @user.appointment.decrement(:attending, 1)
      @user.appointment.save
    end
    @user.appointment = @appointment.reload
    @user.appointment.increment(:attending, 1)
    @user.appointment.save
    @user.save
    render json: Appointment.all.order('date')
  end

  def approved
    @appointments = Appointment.where(:date => (Time.now - 1.hour)..(Time.now+1.hour)).order('date')
    emails = @appointments.map { |appointment| appointment.users.map(&:email) }.flatten
    emails << 'sdh@eml.cc'
    emails << 'freedmancharlie@gmail.com'
    render json: {emails: emails.map(&:downcase)}
  end
end
