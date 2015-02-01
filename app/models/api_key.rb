class ApiKey < ActiveRecord::Base
  belongs_to :user
  
  validates :user, presence: true
  validates :key, presence: true
end
