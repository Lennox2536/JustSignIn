module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_user
    end

    private

    def find_user
      #TODO
      # extract session key to constant
      User.find_by(id: cookies.encrypted['_justsignin_session']['user_id']) || reject_unauthorized_connection
    end
  end
end
