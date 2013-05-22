class CreateRecipientLists < ActiveRecord::Migration
  def change
    create_table :recipient_lists do |t|
      t.string :name
      t.string :mail_sender
      t.integer :user_id

      t.timestamps
    end
  end
end
