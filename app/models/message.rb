class Message < ApplicationRecord
  validates :body, presence: true

  before_save do
    ActionCable.server.broadcast(self.room.name, {author: self.user.name, body: self.body})
  end

  belongs_to :user
  belongs_to :room
end
