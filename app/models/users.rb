class Users < ActiveRecord::Base
  attr_accessible :email, :session_token, :timestamps, :user_id
end
