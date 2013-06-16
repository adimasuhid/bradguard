class CreateCsvs < ActiveRecord::Migration
  def change
    create_table :csvs do |t|
      t.string :filepicker_url
      t.integer :user_id

      t.timestamps
    end
  end
end
