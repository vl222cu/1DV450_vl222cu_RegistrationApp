class User < ActiveRecord::Base
  has_one :api_key
  has_secure_password
  
  validates :username, presence: { message: "You have to enter a username" },
  length: { in: 3..50, message: "The username has to contain 3-50 characters" }
  validates :email, presence: true, uniqueness: true, email_format: { message: "doesn't look like an email address" }
  validates :userpassword, presence: true
end
