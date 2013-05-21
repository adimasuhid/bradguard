class IncomingMail < ActiveRecord::Base
  attr_accessible :message, :sender, :subject

  API_HOST = "https://fireflyapi.com/api/sms"
  API_KEY = "9uzQsvMNTyggsNvkirPN"

  def self.send_sms(number,message)
    response = RestClient.post API_HOST, { api: API_KEY, number: number, message: message}
    puts response
  end
end
