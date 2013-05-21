class IncomingMailsController < ApplicationController
  def create
    Rails.logger.info params[:plain]
    puts params[:plain]
    puts params[:envelope][:from]

    if params[:envelope][:from].present?
      @message = IncomingMail.create!(sender: params[:envelope][:from], subject: params[:headers][:Subject], message: params[:plain])
      puts "Yey in here"
      render :text => 'success', :status => 200
    else
      puts "Oh no unknown"
      render :text => 'Unknown user', :status => 404
    end
  end
end
