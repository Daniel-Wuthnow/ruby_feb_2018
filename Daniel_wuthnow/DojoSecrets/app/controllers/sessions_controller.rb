class SessionsController < ApplicationController
	def new
		if session[:user_id]
			return redirect_to secrets_path
		end
	end
	def create
		user = User.find_by(email: params[:email])

		if user
			if user.authenticate(params[:password])
				session[:user_id] = user.id

				return redirect_to secrets_path
			end
			flash[:error_password] = ["incorrect password"]
		else
			flash[:error_email] = ["incorrect email"]
		end
		return redirect_to :back
	end
	def destroy
		session[:user_id] = nil
		return redirect_to new_session_path
	end
end
