class PathController < ApplicationController
	
	def index
		return render plain: "its me"
	end
	def home
		return render plain: "Saying hello"
	end
	def joe
		return render plain: "Saying hello joe"
	end
	def mich
		return redirect_to "/say/hello/joe"
	end
	def say
		return render plain: "What do you want me to say"
	end
	def time
		if not session[:time]
			session[:time]=0
		else
		session[:time] += 1
	end
	end
	def reset
		session.clear
		return render plain: "no more session"
	end
end
