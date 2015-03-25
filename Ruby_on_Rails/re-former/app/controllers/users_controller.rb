class UsersController < ApplicationController
	def new
		@user = User.new
		@alluser = User.all
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to root_path()
		else
			@alluser = User.all
			render :new
		end
	end

private

	def user_params
		params.permit(:username,
									 :email,
									 :password)
	end
end
