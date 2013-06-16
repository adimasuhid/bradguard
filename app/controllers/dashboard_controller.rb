class DashboardController < ApplicationController
  def index
    @recipient_lists = RecipientList.where(user_id: current_user.id)
    @recipient_list = current_user.recipient_lists.new
    @recipient = Recipient.new
    @csv_upload = current_user.csv_uploads.new

    @monitored_emails = current_user.monitored_emails
    @monitored_email = current_user.monitored_emails.new
  end
end
