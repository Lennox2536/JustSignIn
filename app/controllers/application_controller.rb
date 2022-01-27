class ApplicationController < ActionController::Base
  before_action :set_current_user

  def ensure_logged_in
    unless @user
      flash.alert = 'You must be logged in.'
      redirect_to '/home'
    end
  end

  def set_current_user
    @user = User.find_by(id: session[:user_id]) if session[:user_id]
  end
end
