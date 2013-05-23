class IncomingMailsController < ApplicationController
  def create

    if params[:envelope][:from].present?
      @mail = IncomingMail.create!(sender: params[:envelope][:from], forwarder: params[:envelope][:to],subject: params[:headers][:Subject], message: params[:plain])
      puts "Yey in here"

      @recipients = RecipientList.where(mail_sender: @mail.forwarder).first.recipients
      @recipients.each do |recipient|
        IncomingMail.send_sms(recipient.number,@mail.short_message) 
      end

      render :text => 'success', :status => 200
    else
      puts "Oh no unknown"
      render :text => 'Unknown user', :status => 404
    end
  end

end
