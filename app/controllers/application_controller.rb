class ApplicationController < ActionController::Base
  helper_method :current_user
  helper_method :requires_user
  helper_method :logged_in?

  private

  def current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def requires_user
    if !logged_in?
      flash[:alert] = "You must sign in to perform that action"
      redirect_to :root
    end
  end
end
