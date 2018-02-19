class TimesController < ApplicationController
  def main
  	clock = Time.now.to_i
  	@time = Time.at(clock).strftime("%B %e, %Y at %I:%M %p")
  	p"time"
  end
end
