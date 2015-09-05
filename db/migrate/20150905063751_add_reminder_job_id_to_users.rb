class AddReminderJobIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :reminder_job_id, :string
  end
end
