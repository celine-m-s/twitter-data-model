class UsersController < ApplicationController

	def new 
		@user = User.new 
	end

	def	create
		@user = User.new(params[:user])
	end

	def edit
		@user = 
	end

	def delete
		@user.delete
	end

end