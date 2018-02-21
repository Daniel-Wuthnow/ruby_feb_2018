class SurveysController < ApplicationController
	def index
		
	end
	def run
		if session[:count] > 0
			session[:count] += 1
		else
			session[:count] = 0
		end
		session[:name] = params[:name]
		session[:loc] = params[:loc]
		session[:lau] = params[:lau]
		session[:name] = params[:name]
		@loc = params[:loc]
		@lau = params[:lau]
		return redirect_to "/result"
	end
	def result
		
	end
end
