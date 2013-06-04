class AddEgAcctToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eg_acct, :string
  end
end
