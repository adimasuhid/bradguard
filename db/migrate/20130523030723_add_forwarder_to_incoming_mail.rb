class AddForwarderToIncomingMail < ActiveRecord::Migration
  def change
    add_column :incoming_mails, :forwarder, :string
  end
end
