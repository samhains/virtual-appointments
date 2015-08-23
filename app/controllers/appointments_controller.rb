class AppointmentsController < ApplicationController
  before_action :require_user

  def index
    @appointments = Appointment.all
  end
end
