class UsersController < ApplicationController
  def create
    @user = User.new params[:user]
    if @user.save
      redirect_to root_path, flash: {:success => "Thanks for signing up!"}
    else
      redirect_to root_path, flash: {:success => "You weren't able to sign up. Please send your details again."}
    end
  end
end
