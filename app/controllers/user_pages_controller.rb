class UserPagesController < ApplicationController

  include Secured

  def dashboard
    @user = logged_in_user
  end

  def user_edit_info
    @user = User.new
    @user.uid = params[:uid]
  end

  def user_update
    @user = User.new
    @user.first_name = params[:first_name]
    @user.last_name = params[:last_name]
    @user.email = params[:email]
    @user.uid = params[:uid]
    if @user.save
      redirect_to '/dashboard'
    else
      flash[:danger] = @user.errors.full_messages.to_sentence
      render "user_pages/user_edit_info"
    end
  end

end