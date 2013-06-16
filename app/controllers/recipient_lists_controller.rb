class RecipientListsController < ApplicationController
  def index
    
  end

  def create
    @recipient_list = current_user.recipient_lists.new params[:recipient_list]

    if @recipient_list.save
      redirect_to dashboard_index_path, :flash => { success: "Yey! Recipient List Saved." }
    end
  end

end
