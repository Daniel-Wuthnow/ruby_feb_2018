require_relative 'mammal'
class Dog < Mammal
	def initialize
		super
		@health = 100
		self
	end
	def pet
		@health += 5
		self
	end
	def walk
		@health -= 1
		self
	end
	def run
		@health -= 10
		self
	end
end

dog1 = Dog.new.pet().walk().run().display_health()