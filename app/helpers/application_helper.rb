module ApplicationHelper
  # def current_user
  #   User.find(session[:user_id])
  # end
  def owner?(object)
    current_user == object.user 
  end
end
