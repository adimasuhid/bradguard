class CreateIncomingMails < ActiveRecord::Migration
  def change
    create_table :incoming_mails do |t|
      t.string :sender
      t.string :subject
      t.text :message

      t.timestamps
    end
  end
end
