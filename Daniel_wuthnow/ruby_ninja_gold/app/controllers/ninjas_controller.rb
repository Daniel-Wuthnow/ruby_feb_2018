class NinjasController < ApplicationController
  def gold
  	if not session[:gold]
  		session[:gold] = 0
  	end
  	if not session[:total]
  		session[:total] = 0
  	end

  end
  def run

  	if params[:build] == "farm"
  		range = 10
  		str = 10
  	elsif params[:build] == "cave"
  		range = 5
  		str = 5
  	elsif params[:build] == "house"
  		range = 4
  		str = 2
  	elsif params[:build] == "casino"
  		range = 100
  		str = -50
  	end
  	session[:gold] = rand(range)+str
  	session[:total] += session[:gold]
  	session[:event] = "You just got " + session[:gold].to_s + " gold from " +params[:build].to_s
  	return redirect_to "/"
  end
  def reset
  	session.clear
  	return redirect_to "/"
  end
end
