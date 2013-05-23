class IncomingMail < ActiveRecord::Base
  attr_accessible :message, :sender, :subject, :short_message, :forwarder

  before_save :shorten

  API_HOST = "https://fireflyapi.com/api/sms"
  API_KEY = "9uzQsvMNTyggsNvkirPN"

  def self.send_sms(number,message)
    response = RestClient.post API_HOST, { api: API_KEY, number: number, message: message}
    puts response
  end

  def shorten
    self.short_message = "S: #{subject} M:#{message}".slice(0,150)
  end
end
