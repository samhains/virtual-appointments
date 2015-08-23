class RemoveAppointmentUser < ActiveRecord::Migration
  def change
    drop_table :appointment_users
    add_column :users, :integer, :user_id
  end
end
