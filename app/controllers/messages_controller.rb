class MessagesController < ApplicationController
  before_action :ensure_logged_in

  def create
    message = Message.new(values)

    if message.save
      flash.notice = 'Message sent'
      redirect_to room_path(room_id)
    else
      flash.alert = 'Something went wrong'
      redirect_to home_path
    end

  end

  private

  def values
    values = {}
    values.merge!(body, {room_id: room_id}, {user_id: @user.id})
  end

  def body
    params.require(:message).permit(:body)
  end

  def room_id
    params.require(:room_id)
  end
end
