class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_locale

  def after_sign_in_path_for variable
  	'/welcome/index'
  end

  private
  	def set_locale
  		#puts request.headers["Accept-Language"]
  		#I18n.locale = request.headers["Accept-Language"].split(';')[0].split(',').last
  	end
end
