class CsvUploadsController < ApplicationController
  def create
    @csv = current_user.csv_uploads.new params[:csv_upload]

    if @csv.save
      @parsed = @csv.parse_csv
      raise @parsed.to_json
      #csv successfully parsed flash
    end
  end
end
