class ApplicationController < ActionController::Base
	def index
	end

	protect_from_forgery with: :exception

	rescue_from CanCan::AccessDenied do |exception|
		redirect_to root_url, :alert => exception.message
	end

	def current_ability
		@current_ability ||= Ability.new(current_admin_user)
	end

end
