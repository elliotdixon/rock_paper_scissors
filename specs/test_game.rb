require('minitest/autorun')
require('minitest/')
require_relative('../models/rock_paper_scissors')

class TestGame < MiniTest::Test

  def test_rock_wins_vs_scissors()
    assert_equal('Player 1!', RockPaperScissors.play('rock', 'scissors'))
  end

  def test_paper_wins_vs_rock()
    assert_equal('Player 2 wins!', RockPaperScissors.paly('rock', 'paper'))
  end

  def test_scissors_win_vs_paper()
    assert_equal('Player 1 wins!', RockPaperScissors.play('scissors', 'paper'))
  end

  def test_draw()
    assert_equal('Its a draw!', RockPaperScissors.play('scissors', 'scissors'))
    assert_equal('Its a draw!', RockPaperScissors.play('paper', 'paper'))
    assert_equal('Its a draw!', RockPaperScissors.play('rock', 'rock'))
  end

end
