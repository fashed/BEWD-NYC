class WelcomeController < ApplicationController
	skip_before_action :configure_permitted_parameters, if: :devise_controller?
	skip_before_action :authenticate_user!

	def index
		@user_count = User.all.count
		@users = User.all
	end
end