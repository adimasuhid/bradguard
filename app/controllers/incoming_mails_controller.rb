class IncomingMailsController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def index
    head(:ok)
  end

  def handle_inbound(event_payload)
    if event_payload["msg"]["from_email"].present?

      @attrs = {
        sender: event_payload["msg"]["from_email"],
        forwarder: event_payload["msg"]["email"],
        subject: event_payload["msg"]["subject"],
        message: event_payload["msg"]["text"]
      }

      @mail = IncomingMail.create!(@attrs)
      puts "Yey in here"
      
      @recipient_list = RecipientList.where(mail_sender: @mail.forwarder).first

      if @recipient_list.present?
        @recipient_list.recipients.each do |recipient|
          IncomingMail.send_sms(recipient.number,@mail.short_message) 
        end
      end

    else
      puts "Oh no unknown"
    end
  end

end
