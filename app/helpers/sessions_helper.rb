module SessionsHelper
  # signs in a user
  def sign_in user
    session[:user_id] = user.id
  end

  # returns the current signed in user, if one exists
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])  
  end

  # is user signed in?
  def signed_in?
    !current_user.nil?
  end
end
