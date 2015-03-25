class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		fail
		#@user = User.find(params[:id])
	end
end
