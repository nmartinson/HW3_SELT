class User < ActiveRecord::Base
  attr_accessible :email, :session_token, :timestamps, :user_id

  def self.create_user!(params)
     token = SecureRandom.base64
     params[:session_token] = token
     User.create!(params)
  end
end
