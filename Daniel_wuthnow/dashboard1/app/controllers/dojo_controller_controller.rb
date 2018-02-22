class DojoControllerController < ApplicationController
  def index
  	@Dojos = Dojo.all
  end
  def new
  	
  end
  def create
  	Dojo.create(branch: params[:branch],street: params[:street],city: params[:city],state: params[:state])
  	return redirect_to "/dojos"
  end
end
