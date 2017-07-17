require 'minitest/autorun'
require_relative '../models/game.rb'

class TestGame < Minitest::Test


  def test_rock_rock
    game = Game.new("rock", "rock")
    assert_equal( "It is a draw", game.run)
  end

  def test_scissor_scissor
    game = Game.new("scissor", "scissor")
    assert_equal( "It is a draw", game.run)
  end

  def test_paper_paper
    game = Game.new("paper", "paper")
    assert_equal( "It is a draw", game.run)
  end

  def test_rock_scissors
    game = Game.new("rock", "scissor")
    assert_equal("Rock is the winner!", game.run)
  end

  def test_scissors_rock
    game = Game.new("scissor", "rock")
    assert_equal("Rock is the winner!", game.run)
  end

  def test_paper_rock
    game = Game.new("paper", "rock")
    assert_equal("Paper wins it!", game.run)
  end

  def test_rock_paper
    game = Game.new("paper", "rock")
    assert_equal("Paper wins it!", game.run)
  end

  def test_scissor_paper
    game = Game.new("scissor", "paper")
    assert_equal("Scissor wins this one!", game.run)
  end

  def test_paper_scissor
    game = Game.new("paper", "scissor")
    assert_equal("Scissor wins this one!", game.run)
  end

end