class RemoveUsersAddDuration < ActiveRecord::Migration
  def change
    remove_column :appointments, :user_id
    add_column :appointments, :duration, :integer
  end
end
