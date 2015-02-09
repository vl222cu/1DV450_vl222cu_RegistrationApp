class User < ActiveRecord::Base
  has_one :api_key

  before_save { self.email = email.downcase }

  validates :email, presence: true, uniqueness: true, email_format: { message: "doesn't look like an email address" }
  
  has_secure_password
end
