class ApikeysController < ApplicationController
  include SessionsHelper
  before_action :check_user
  
  def show

  end
end
