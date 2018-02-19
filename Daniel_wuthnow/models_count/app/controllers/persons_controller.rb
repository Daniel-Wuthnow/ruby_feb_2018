class PersonsController < ApplicationController
	def index
		return render json: User.all
	end
	def new
		
	end
	def show
		return render json: User.find(params[:id])
	end
	def edit
		@User = User.find(params[:id])
		p @User
	end
	def create
		User.create(name:params[:name])
		return redirect_to "/users"
	end
	def total
		p "in total"
		@total = User.all.count
	end
end
