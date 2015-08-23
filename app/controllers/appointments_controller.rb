class AppointmentsController < ApplicationController
  before_action :require_user

  def index
    @appointments = Appointment.all
    @index = Appointment.all.find_index(current_user.appointment)
  end
end
