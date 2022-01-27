class SessionsController < ApplicationController
  def sign_up
  end

  def create
    user = User.new(user_params)

    if user.save
      flash.notice = 'Account has been created.'
      redirect_to '/home'
    else
      flash.alert = 'Bad input'
      redirect_to '/sign_in'
    end

  end

  def log_in
  end

  def verify
    user = User.find_by(email: user_params[:email])&.authenticate(user_params[:password])

    if user
      flash.notice = 'Logged in'
      session[:user_id] = user.id
      redirect_to '/home'
    else
      flash.alert = 'Bad email or password'
      redirect_to '/log_in'
    end
  end

  def log_out
    session[:user_id] = nil
    flash.notice = 'Logged out'
    redirect_to '/home'
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
