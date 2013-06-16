class RecipientsController < ApplicationController
  def create
    @recipient_list = RecipientList.find params[:recipient][:recipient_list_id]
    @recipient = @recipient_list.recipients.new params[:recipient]

    if @recipient.save
      redirect_to dashboard_index_path, :flash => { success: "Successfully added #{@recipient.number} to List #{@recipient_list.name}"}
    end
  end
end
