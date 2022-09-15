class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(users_params_data)
    if @user.save
      redirect_to new_session_path  :notice => "Registration Succesfull - Now Login ."
    else
      render  :new, status: :unprocessable_entity
    end
  end

  #  def XZY
  #   @user = User.find(login_params_data)
  #   if @user.id
  #     redirect_to root_path  :notice => "Registration Succesfull - Now Login ."
  #   else
  #     flash.now[:alert] = "Email or password is invalid"
  #     render :new, status: :unprocessable_entity
  #   end
  # end
  

  private
  def users_params_data
    params.require(:user).permit(:username, :email, :name, :dob, :password, :password_digest)
  end
  # private
  # def login_params_data
  #   params.require(:user).permit(:username,:password)
  # end
end


