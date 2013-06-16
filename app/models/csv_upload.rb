require "csv"
class CsvUpload < ActiveRecord::Base
  

  attr_accessible :filepicker_url, :user_id

  belongs_to :user

  def parse_csv
    #add rescue
    response = RestClient.get self.filepicker_url
    #result = JSON.parse response

    CSV.parse response, :headers => true
  end
end
