class ApplicationController < ActionController::Base

  def logged_in_user
    @user = User.find_by_uid(session[:userinfo]['sub'])
    return @user
  end

end
