class DojoControllerController < ApplicationController
  def index
  	@Dojos = Dojo.all
  end
end
