require('minitest/autorun')
require('minitest/rg')
require_relative('../part_b.rb')


class TestTeam < MiniTest::Test
  def test_team_name
    players = ['Boyd', 'Prso', 'Ferguson']
    team = Team.new('Rangers', players, 'Smith')
    assert_equal('Rangers', team.team_name)
  end

  def test_players
    players = ['Boyd', 'Prso', 'Ferguson']
    team = Team.new('Rangers', players, 'Smith')
    assert_equal(players, team.players)
  end

  def test_coach
    players = ['Boyd', 'Prso', 'Ferguson']
    team = Team.new('Rangers', players, 'Smith')
    assert_equal('Smith', team.coach)
  end

  def test_set_coach
    players = ['Boyd', 'Prso', 'Ferguson']
    team = Team.new('Rangers', players, 'Smith')
    # team.set_coach('PLG')
    team.coach = 'PLG'
    assert_equal('PLG', team.coach)
  end

  def test_add_player
    players = ['Boyd', 'Prso', 'Ferguson']
    team = Team.new('Rangers', players, 'Smith')
    players << ['Boyd', 'Prso', 'Ferguson', 'Papac']
    team.add_player('Papac')
    assert_equal(['Boyd', 'Prso', 'Ferguson''Papac'], team.add_player)

  end


end
