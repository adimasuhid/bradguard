class IncomingMailsController < ApplicationController
  def create
    Rails.logger.info params[:plain]
    puts params[:plain]

    if params[:envelope][:from] != 'ace.dimasuhid@gmail.com'
      @message = IncomingMail.create!(sender: params[:envelope][:from], subject: params[:headers][:Subject], message: params[:plain])
      render :text => 'success', :status => 200
    else
      render :text => 'Unknown user', :status => 404
    end
  end
end
