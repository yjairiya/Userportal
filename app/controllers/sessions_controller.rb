class SessionsController < ApplicationController
  
  def new
    @user = User.new
  end
  # debugger
  def create
    @user = User.find_by(username: params[:username])
    if @user && user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:notice]="Login successful"
      redirect_to '/'
    else
      flash[:notice]="Invalid Email or Password"
      redirect_to '/login'
    end
  end

  def destroy
  
  end

  # private
  # def login_params_data
  #   params.require(:user).permit(:username, :password, )
  # end

end


