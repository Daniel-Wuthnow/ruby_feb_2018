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
  	p params
  	@Dojo = Dojo.find(params[:id])
  	@Student = Student.where(dojo_id: params[:id])
  	p @Student
  end
  def edit
  	@Dojo = Dojo.find(params[:dojo_id])
  	
  end
  def update
  	dojo = Dojo.find(params[:dojo_id])
  	dojo.update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
  	return redirect_to "/dojos"
  end
  def destroy
  	dojo = Dojo.find(params[:dojo_id])
  	dojo.destroy
  	return redirect_to "/dojos"
  end
  def student_show
  	@Student = Student.find(params[:student_id])
  	@classmate = Student.where(dojo_id: params[:id]).where.not(id: @Student.id)
  	p params
  	@Dojo = Dojo.find(params[:id])
  end
  def student_add
  	
  end
  def student_edit
  	
  end
end
