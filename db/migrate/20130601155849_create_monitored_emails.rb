class CreateMonitoredEmails < ActiveRecord::Migration
  def change
    create_table :monitored_emails do |t|
      t.string :email
      t.integer :recipient_list_id
      t.integer :user_id

      t.timestamps
    end
  end
end
