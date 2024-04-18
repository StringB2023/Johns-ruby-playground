class Player
  attr_accessor :name, :health, :score

  def initialize(name, health = 100)
    @name = name.capitalize
    @health = health
  end

  def score
    score = @name.length + @health
  end

  def name=(new_name)
    @name = new_name.capitalize
  end

  def to_s
    "I\'m #{@name} with a health of #{@health} and a score of #{score}"
  end

  def boost
    @health += 15
  end

  def drain
    @health -= 10
  end
end

if __FILE__ == $0
  player = Player.new('jase')
  puts player.name
  puts player.health
  player.boost
  puts player.health
  player.drain
  puts player.health
end
