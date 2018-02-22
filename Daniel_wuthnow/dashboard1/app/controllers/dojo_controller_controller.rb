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
  def show
  	@Dojo = Dojo.find(params[:id])
  end
  def edit
  	@Dojo = Dojo.find(params[:id])
  	
  end
  def update
  	dojo = Dojo.find(params[:id])
  	dojo.update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
  	return redirect_to "/dojos"
  end
  def destroy
  	dojo = Dojo.find(params[:id])
  	dojo.destroy
  	return redirect_to "/dojos"
  end
end
