require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
# ------------------------------------------------------------------------
class TestTeam < MiniTest::Test
    
    def test_name
        team = Team.new("Avengers", 6, "Cap")
        assert_equal("Avengers", team.name())
    end

    def test_players
        team = Team.new("Avengers", 6, "Cap")
        assert_equal(6, team.players())
    end

    def test_coach
        team = Team.new("Avengers", 6, "Cap")
        assert_equal("Cap", team.coach())
    end
    def test_set_name

        team = Team.new("Avengers", 6, "Cap")
        team.set_coach("Iron Man")
        assert_equal("Iron Man", team.coach())
    end


end
