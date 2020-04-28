class SessionsController < ApplicationController
  def create
    user_creds = get_user_creds
    user = User.find_by(username: user_creds[:username])
    if user && user.authenticate(user_creds[:password])
      session[:user_id] = user.id
      flash[:notice] = "You are signed in"
      redirect_to :articles
    else
      flash[:alert] = "Invalid credentials"
      redirect_to :login
    end
  end

  def destroy
    flash[:notice] = "You are signed out"
    session[:user_id] = nil
    redirect_to :root
  end

  private

  def get_user_creds
    params.require(:user).permit(:username, :password)
  end
end