require("minitest/autorun")
require_relative("../homework_part_2")

class TeamTest < MiniTest::Test

  def test_team_name
    team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
    assert_equal('Gibraltar', team.name)
  end

  def test_team_players
    team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
    assert_equal(["Goalkeeper", "Defender", "Midfielder", "Attacker"], team.players)
  end

  def test_team_coach
    team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
    assert_equal("Jose Mourinho", team.coach)
  end

  def test_add_player
    team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
    team.add_player("Sweeper")
    assert_equal(["Goalkeeper", "Defender", "Midfielder", "Attacker", "Sweeper"], team.players)
  end

  def test_set_coach_name
      team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
      team.set_coach_name("John Smith")
      assert_equal("John Smith", team.coach)
  end

  def test_find_player__returns_player
    team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
    assert_equal(true, team.find_player("Attacker"))
  end

  def test_find_player__returns_nil
    team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
    assert_equal(false, team.find_player("Playmaker"))
  end

  def test_update_points
    team = Team.new("Gibraltar", ["Goalkeeper", "Defender", "Midfielder", "Attacker"], "Jose Mourinho", 0)
    team.update_points("defeat")
    assert_equal(-3, team.points())
  end

end
