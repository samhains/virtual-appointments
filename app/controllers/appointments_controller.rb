class AppointmentsController < ApplicationController
  before_action :require_user

  def index
    @appointments = Appointment.all.order('date')
    @index = Appointment.all.order('date').find_index(current_user.appointment)
  end
end
