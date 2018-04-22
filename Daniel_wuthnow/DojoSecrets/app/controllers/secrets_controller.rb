class SecretsController < ApplicationController
  def index
  	@secrets = Secret.all
  end
  def create
  	secret = Secret.create(secret_params)
  	return redirect_to secrets_path
  end
  def destroy
  	secret = Secret.find(params[:id])
  	secret.destroy
  	return redirect_to :back
  end

  private
  	def secret_params
  		params.require(:secrets).permit(:contex).merge(user: current_user)
  	end
end
