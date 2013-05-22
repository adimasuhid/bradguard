class AddRecipientListIDtoRecipients < ActiveRecord::Migration
  def change
    add_column :recipients, :recipient_list_id, :integer
  end
end
