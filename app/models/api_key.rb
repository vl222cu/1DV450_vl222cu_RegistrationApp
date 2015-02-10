require 'securerandom'

class ApiKey < ActiveRecord::Base
  belongs_to :user
  before_create :generate_api_key
  
  validates :key, uniqueness: true
  
  #Source:
  #http://railscasts.com/episodes/352-securing-an-api?view=asciicast
  private
  
  def generate_api_key
    begin
      self.key = SecureRandom.hex(20)
    end while self.class.exists?(key: key)
  end
end
