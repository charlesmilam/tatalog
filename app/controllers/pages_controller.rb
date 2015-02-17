class PagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def signin
    @user = User.find_by(id: 1)
  end

  def signin_attempt
    if params[:password] == @user.password
      redirect_to user_tattoos_path(@user)
    else
      render action: "signin"
    end
  end
end
