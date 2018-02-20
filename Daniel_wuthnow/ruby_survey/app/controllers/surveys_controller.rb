class SurveysController < ApplicationController
	def index
		session[:count] = 0
	end
	def run
		session[:count] += 1
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
