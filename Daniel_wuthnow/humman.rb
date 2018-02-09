class Human
	attr_accessor :health, :strength, :intelligece, :stealth
  def initialize
  	@strength = 3
  	@intelligece = 3
  	@stealth = 3
  	@health = 100
  	@name =""
  end
  def stats
  	puts "Health: #{@health}"
  end
  def attack player
  	test = player.class.ancestors.any? { |e| e == Human }
  	if test == true
  		player.health -= 10
  	end
  	puts player.health
  end
end

bob = Human.new
dave = Human.new

bob.attack(dave)
