module SessionsHelper
  # signs in the current user
  def sign_in user
    session[:user_id] = user.id
  end

  # signs out the current user
  def sign_out
    session.delete :user_id
    @current_user = nil
  end

  # returns the current signed in user, if one exists, through either
  # temporary or persistent session
  def current_user
    if user_id = session[:user_id]
      @current_user ||= User.find_by(id: user_id)
    elsif user_id = cookies.signed[:user_id]
      user = User.find_by(id: user_id)
      if user && user.authenticated?(cookies[:remember_token])
        sign_in user
        @current_user = user
      end
    end
  end

  # is user signed in?
  def signed_in?
    !current_user.nil?
  end

  # remembers a user in a persistent session (secure cookie)
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end
end
