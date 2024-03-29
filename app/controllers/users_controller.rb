class UsersController < ApplicationController
  before_action :set_user, 
                 only: [
                  :show,
                  :edit,
                  :update,
                  :destroy
                ]

  before_action :signed_in_user,
                  only: [
                    :index,
                    :show,
                    :edit,
                    :update,
                    :destroy
                  ]
  before_action :correct_user,
                  except: [
                    :index
                  ]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        sign_in @user
        format.html {redirect_to @user, notice: "Welcome to tatalog, #{@user.name}!"}
      else
        flash.now[:danger] = "Sign in was unsuccessful. Please try again."
        format.html {render action: "new"}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html {redirect_to @user, notice: "User was successfuly updated."}
      else
        flash.now[:danger] = "Update was unsuccessful. Check out the error(s) below and please try again."
        format.html {render action: "edit"}
      end
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url}
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user) .permit(:name, :email, :password, :password_confirmation)
  end

  # confirms a user is signed in
  def signed_in_user
    unless signed_in?
      flash[:danger] = "Please sign in to access that page."
      redirect_to signin_url
    end
  end

  # confirms the correct user
  def correct_user
    unless current_user?(@user)
      flash[:danger] = "You are not authorized to view that page."
      redirect_to(root_url)
    end
  end
end
