class UsersController < ApplicationController
	def new
		@user = User.new
		@alluser = User.all
	end

	def create
		if params.has_key?(:user) 
		    @user = User.new(user_params_form_for)
		else
			@user = User.new(user_params_html)
		end


		if @user.save
			redirect_to root_path()
		else
			@alluser = User.all
			render :new
		end
	end

private

	def user_params_html
		params.permit(:username,
									 :email,
									 :password)
	end

	def user_params_form_for
		params.require(:user).permit(:username,
									 :email,
									 :password)
	end
end
