module ApplicationHelper

  def get_user_name_from_sesson
    user = User.find_by_uid(session[:userinfo]['sub'])
    if user.present?
      user.first_name + " " + user.last_name
    else
      "NO NAME"
    end
  end

end
