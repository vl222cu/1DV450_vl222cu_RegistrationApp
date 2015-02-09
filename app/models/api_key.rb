require 'securerandom'

class ApiKey < ActiveRecord::Base
  belongs_to :user
  
  validates :user, presence: true
  validates :key, presence: true, uniqueness: true
  
  def create_api_key
    SecureRandom.hex(20)
  end
end
