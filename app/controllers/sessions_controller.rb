class SessionsController < ApplicationController
  def sign_up
  end

  def create
    params.permit!
    user = User.new(params[:user])

    if user.save
      session[:user_id] = user.id
      flash.notice = 'Logged in.'
      redirect_to '/home'
    else
      flash.alert = 'Bad input'
      redirect_to '/sign_in'
    end

  end

  def log_in

  end

  def verify

  end
end
