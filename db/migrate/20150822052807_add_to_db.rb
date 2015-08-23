class AddToDb < ActiveRecord::Migration
  def change
    add_column :appointment_users, :appointment_id, :integer
    add_index :appointment_users, :appointment_id
    add_column :appointments, :description, :text
  end
end
