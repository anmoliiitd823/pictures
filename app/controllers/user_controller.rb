class UserController < ApplicationController
	def new
		@user = User.new()
	end

	def create
  		@user = User.create(user_params)
	end

	def show
		@users = User.all()
	end

private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

	def user_params
	  params.require(:user).permit(:avatar)
	end

end
