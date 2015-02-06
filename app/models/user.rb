class User < ActiveRecord::Base
  has_one :api_key
  has_secure_password

  validates :email, presence: true, uniqueness: true, email_format: { message: "doesn't look like an email address" }
  validates :password, presence: true
end
