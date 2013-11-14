class LocalesController < ActionController::Base
	def es
		I18n.locale = :es
		redirect_to request.referer
	end

	def en
		I18n.locale = :en
		#redirect_to root_path
		redirect_to request.referer
	end
end