class RoomsController < ApplicationController
  before_action :ensure_logged_in

  def show
    @room = Room.find(params[:id])
  end
end
