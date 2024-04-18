require 'minitest/autorun'

require_relative '../../studio_game/lib/studio_game/player'

class PlayerTest < Minitest::Test
  # test methods go here

  def test_has_a_capitalized_name
    player = Player.new('finn', 60)

    assert_equal 'Finn', player.name
  end

  def test_intital_health_is_as_set
    player = Player.new('tom', 75)

    assert_equal 75, player.health
  end

  def test_score_is_calc_correctly
    player = Player.new('Tom', 80)

    assert_equal 83, player.score
  end

  def test_to_s_iwc
    player = Player.new('Bob', 87)

    assert_equal "I\'m Bob with a health of 87 and a score of 90", player.to_s
  end

  def test_boost_iwc
    player = Player.new('Bob', 85)
    player.boost

    assert_equal 100, player.health
  end

  def test_drain_iwc
    player = Player.new('Bob', 85)
    player.drain

    assert_equal 75, player.health
  end
end
