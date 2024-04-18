require_relative 'lib/studio_game/player'
require_relative 'lib/studio_game/game'

player_1 = Player.new('Shepard', 100)
player_2 = Player.new('Garrus', 100)
player_3 = Player.new('Wrex', 100)
player_4 = Player.new('Kaden', 100)
# Array setup
players = [player_1, player_2, player_3, player_4]

game_1 = Game.new('Game 1')

players.each do |player|
  game_1.add_player(player)
end
game_1.play(3)
