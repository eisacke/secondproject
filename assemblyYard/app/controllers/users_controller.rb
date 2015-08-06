class UsersController < ApplicationController
	# before_action :set_user, only: [:show, :edit, :update, :destroy]
	load_and_authorize_resource

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def edit
		@user = User.find(params[:id])
	end

	def create
		@user = User.new user_params
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def update
		respond_to do |format|
			if @user.update(user_params)
				format.html {redirect_to @user}
				format.json {render :show, status: :ok, location: @user}
			end
		end
	end

	def user_params
		params.require(:user).permit(:user_name, :email, :password, :password_confirmation)
	end

end
