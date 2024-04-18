require 'minitest/autorun'

require_relative '../../studio_game/lib/studio_game/player'
require_relative '../../studio_game/lib/studio_game/game'

class GameTest < Minitest::Test
  def setup
    @game = Game.new('Test Me')

    @player_1 = Player.new('A', 60)
    @player_2 = Player.new('B', 75)

    $stdout = StringIO.new
  end

  def test_if_no_players_added
    assert_equal [], @game.players
  end

  def test_players_can_be_added
    @game.add_player(@player_1)
    @game.add_player(@player_2)

    refute_empty @game.players
    assert_equal [@player_1, @player_2], @game.players
  end

  def test_high_roll_die
    @game.add_player(@player_1)

    @game.stub(:roll_die, 6) do
      @game.play
      assert_equal 75, @player_1.health
    end
  end

  def test_mid_roll_die
    @game.add_player(@player_1)

    @game.stub(:roll_die, 3) do
      @game.play
      assert_equal 60, @player_1.health
    end
  end

  def test_low_roll_die
    @game.add_player(@player_1)

    @game.stub(:roll_die, 1) do
      @game.play
      assert_equal 50, @player_1.health
    end
  end
end
