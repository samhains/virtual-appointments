class AddDbTables < ActiveRecord::Migration
  def change
    create_table :appointment do |t|
      t.timestamp :date
      t.integer :capacity
      t.integer :attending
    end

    create_table :appointment_users do |t|
      t.references :user, index: true
      t.references :user, index: true
    end

    create_table :user do |t|
      t.string :name
      t.string :email
    end
  end
end
