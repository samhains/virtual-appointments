class ChangeAppointmentName < ActiveRecord::Migration
  def change
    rename_table :appointment, :appointments
  end
end
