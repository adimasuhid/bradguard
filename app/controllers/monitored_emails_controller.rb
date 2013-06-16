class MonitoredEmailsController < ApplicationController
  def create
    @monitored_email = current_user.monitored_emails.new params[:monitored_email]

    if @monitored_email.save
      redirect_to dashboard_index_path, :flash => { success: "Successfully added #{@monitored_email.email} to recieve messages from! Remember to forward messages to your EmailGoGo email to receive SMS."}
    end
  end
end
