class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :number

      t.timestamps
    end
  end
end
