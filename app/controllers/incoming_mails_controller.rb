class IncomingMailsController < ApplicationController
  include Mandrill::Rails::WebHookProcessor

  def index
    render :text => 'success', :status => 200
  end

  #def create
    #if params[:envelope][:from].present?
      #@mail = IncomingMail.create!(sender: params[:envelope][:from], forwarder: params[:envelope][:to], subject: params[:headers][:Subject], message: params[:plain])
      #puts "Yey in here"

      #@recipients = RecipientList.where(mail_sender: @mail.forwarder).first.recipients
      #@recipients.each do |recipient|
        #IncomingMail.send_sms(recipient.number,@mail.short_message) 
      #end

      #render :text => 'success', :status => 200
    #else
      #puts "Oh no unknown"
      #render :text => 'Unknown user', :status => 404
    #end
  #end

  def handle_inbound(event_payload)
    raise event_payload.to_yaml
    if event_payload[:msg][:from_email].present?
      @mail = IncomingMail.create!(sender: event_payload[:from_email], forwarder: event_payload[:sender], subject: event_payload[:subject], message: event_payload[:text])
      puts "Yey in here"
      
      @recipient_list = RecipientList.where(mail_sender: @mail.forwarder).first

      if @recipient_list.present?
        @recipient_list.recipients.each do |recipient|
          IncomingMail.send_sms(recipient.number,@mail.short_message) 
        end
      end

      render :text => 'success', :status => 200
    else
      puts "Oh no unknown"
      render :text => 'Unknown user', :status => 404
    end
  end

  def show
    render :text => 'success', :status => 200
  end

end
