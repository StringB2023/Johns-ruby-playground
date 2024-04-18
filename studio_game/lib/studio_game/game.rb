require_relative 'treasure_hoard'
class Game
  attr_accessor :name, :players

  def initialize(game_name)
    @name = game_name
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def roll_die
    rand(1..6)
  end

  def play(rounds)
    @rounds = rounds
    # String before game
    puts "\nBefore Playing:"
    puts players
    puts "\n"
    puts "\nAvailable Treasures:"
    Treasure_hoard::TREASURES.each { |treasure| puts "#{treasure.magic_item} value: #{treasure.points}" }
    puts "\n"

    1.upto(rounds) do |current_round|
      puts "Round #{current_round} start!"
      puts "\n"

      players.each do |play|
        number_rolled = roll_die
        treasure_gained = Treasure_hoard.rand_treasure

        case number_rolled
        when 1..2
          play.drain
          puts "#{play.name} got a drained 😩"
        when 3..4
          puts "#{play.name} got skipped"
        else
          play.boost
          puts "#{play.name} got a boosted 😁"
        end
        puts "#{play.name} gained a #{treasure_gained.magic_item} worth #{treasure_gained.points} points"
      end

      puts "\n"
    end

    puts "\nAfter Playing:"
    puts players
  end
end
