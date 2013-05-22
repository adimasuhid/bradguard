class IncomingMailsController < ApplicationController
  def create

    if params[:envelope][:from].present?
      @mail = IncomingMail.create!(sender: params[:envelope][:from], subject: params[:headers][:Subject], message: params[:plain])
      puts "Yey in here"

      IncomingMail.send_sms("09172416140",@mail.short_message) #Ace
      IncomingMail.send_sms("09064774979",@mail.short_message) #Ken

      render :text => 'success', :status => 200
    else
      puts "Oh no unknown"
      render :text => 'Unknown user', :status => 404
    end
  end

end
