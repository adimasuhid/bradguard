class RenameCsVtoCsvUploads < ActiveRecord::Migration
  def change
    rename_table :csvs, :csv_uploads
  end
end
