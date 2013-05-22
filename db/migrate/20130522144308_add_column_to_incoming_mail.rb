class AddColumnToIncomingMail < ActiveRecord::Migration
  def change
    add_column :incoming_mails, :short_message, :string
  end
end
