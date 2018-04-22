class UsersController < ApplicationController
	def home
		return redirect_to "/users/new"
	end
	def index
		@users = User.all
	end
	def new
		
	end
	def create
		user = User.create(user_params)

		if user.valid?
			session[:user_id] = user.id

			return redirect_to secrets_path	
		end
		flash[:error] = user.errors.full_messages
		print user.errors.full_messages

		return redirect_to :back
	end
	def show
		@my_secrets = Secret.where(user: current_user)
		@secrets = Secret.all

	end
	def edit
		
	end
	def update
		
	end
	def destroy
		
	end

	private	
		def user_params
			params.require(:user).permit(:name, :email, :password, :password_confirmation)	
		end
end
