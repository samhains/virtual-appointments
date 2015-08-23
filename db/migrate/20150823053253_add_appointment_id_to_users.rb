class AddAppointmentIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :appointment_id, :integer
    add_index :users, :appointment_id
  end
end
