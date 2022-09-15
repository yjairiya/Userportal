class SessionsController < ApplicationController

  # def show
  #   @user = User.find_by(params[:id])
  # end

  def new
  end
  
  def create
    @user = User.find_by(username: params[:username])
    
    if @user.present? #&& @user.authenticate(params[:password])
      if @user.present? && User.find_by(password: params[:password])
      session[:user_id] = @user.id
      flash[:notice]="Login successful"
      redirect_to root_path
      end
    else 
      flash[:notice]= "Invalid Email or Password"
      redirect_to new_session_path
   
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice]="Logged Out"
    redirect_to root_path
  end
  # def create
#   @user = User.find_by(username: params[:username])
#   @pass = User.find_by(password: params[:password])
  
#   if @user.present? && @pass.present? #&& @user.authenticate(params[:password])
#     session[:user_id] = @user.id
#     flash[:notice]="Login successful"
#     redirect_to root_path
#   else 
#     flash[:notice]= "Invalid Email or Password"
#     redirect_to new_session_path
 
#   end
# end
end



