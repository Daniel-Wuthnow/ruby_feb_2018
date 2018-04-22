class LikesController < ApplicationController
	def create
		user = current_user
		secret = Secret.find(params[:id])
		current_user.liked_secrets << secret unless user.liked_secrets.include? secret

		return redirect_to :back
	end
	def destroy
		like = Like.find_by(user_id: current_user.id, secret_id: params[:id])

		like.delete

		return redirect_to :back
	end
end
