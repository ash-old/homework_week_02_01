require('minitest/autorun')
require('minitest/reporters')
require_relative('../SportsTeam')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class SportsTest < MiniTest::Test

  def setup
    @team = SportsTeam.new('Bulldogs', ['Ash', 'Martin', 'Jamie', 'Phil', 'Dougie'], 'Martha' )
  end

def test_team_name
  assert_equal('Bulldogs', @team.team_name)
end

def test_players
  assert_equal(['Ash', 'Martin', 'Jamie', 'Phil', 'Dougie'], @team.players)
end

def test_coach
  assert_equal('Martha', @team.coach)
end

def test_set_coach_name
  @team.set_coach_name('Bob')
  assert_equal('Bob', @team.coach)
end

def test_add_new_player
  @team.add_new_player('Jonny')
  assert_equal('Jonny', @team.players)
end

def test_check_player
  @players.check_player('Ash')
  assert_equal('Ash', @players.check_player)
end


end
