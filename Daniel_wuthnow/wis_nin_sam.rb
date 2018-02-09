class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end
  def attack(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      obj.health -= 10
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
  end
end


class Wizard < Human
  def initialize
    @intelligence = 25
    @health = 50
    
  end
  def heal
    @health += 10
    self
  end
  def fireball player
    player.health -= 20
    self
  end
end

class Ninja < Human
  def initialize
    @stealth = 175
    
  end
  def steal player
    player.health -= 10
    @health += 10
    self
  end
  def get_away
    @health -= 15
    self
  end
end

class Samurai < Human
  attr_reader :name
  @@num_sams = 0
  def initialize name
    @health = 200
    @@num_sams += 1
    @name = name
  end
  def death_blow player
    player.health = 0
    puts "you killed #{player.name}"
    self
  end
  def meditate
    @health = 200
    self
  end
  def how_many
    puts "there are #{@@num_sams} samurai here"
  end
end


o = Samurai.new("lee")
l = Samurai.new("hun")

o.death_blow(l)