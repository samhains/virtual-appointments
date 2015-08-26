class RemoveAppointmentUser < ActiveRecord::Migration
  def change
    drop_table :appointment_users
  end
end
