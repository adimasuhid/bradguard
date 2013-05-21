class IncomingMailsController < ApplicationController
  def create

    if params[:envelope][:from].present?
      @message = IncomingMail.create!(sender: params[:envelope][:from], subject: params[:headers][:Subject], message: params[:plain])
      @sms_message = "From:#{@message.sender} Subject:#{@message.subject}"
      puts "Yey in here"

      IncomingMail.send_sms("09172416140",@sms_message) #Ace
      IncomingMail.send_sms("09064774979",@sms_message) #Ken

      render :text => 'success', :status => 200
    else
      puts "Oh no unknown"
      render :text => 'Unknown user', :status => 404
    end
  end

end
