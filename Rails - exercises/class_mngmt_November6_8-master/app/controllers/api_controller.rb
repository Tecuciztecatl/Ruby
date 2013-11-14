class ApiController < ActionController::Base
  before_action :authenticate_api_user!

private
  def authenticate_api_user!
  end

end
