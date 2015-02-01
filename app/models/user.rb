class User < ActiveRecord::Base
  has_one :api_key
  
  validates :username, presence: true
  validates :email, presence: true
end
