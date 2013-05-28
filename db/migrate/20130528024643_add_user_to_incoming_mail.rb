class AddUserToIncomingMail < ActiveRecord::Migration
  def change
    add_column :incoming_mails, :user_id, :integer
  end
end
