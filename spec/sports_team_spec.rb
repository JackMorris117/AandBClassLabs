require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
# ------------------------------------------------------------------------
class TestTeam < MiniTest::Test
    @@array = ["Hulk", "Hawkeye", "Black Widow"]
    def test_name
        team = Team.new("Avengers", @@array, "Cap", 0)
        assert_equal("Avengers", team.name())
    end

    def test_players
        team = Team.new("Avengers", @@array, "Cap", 0)
        assert_equal(@@array, team.players())
    end

    def test_coach
        team = Team.new("Avengers", @@array, "Cap", 0)
        assert_equal("Cap", team.coach())
    end
    def test_set_name

        team = Team.new("Avengers", @@array, "Cap", 0)
        team.set_coach("Iron Man")
        assert_equal("Iron Man", team.coach())
    end
    def test_add_to_array

        team = Team.new("Avengers", @@array, "Cap", 0)
        assert_equal(@@array.push("Spider-Man"), team.add_to_array("Spider-Man"))
    end
    def test_check_if_in_array
        team = Team.new("Avengers", @@array, "Cap", 0)
        team.check_if_in_array("Hawkeye")
        assert_equal(false, team.check_if_in_array("Thanos"))
        
    end
    def test_win_points_up
        team = Team.new("Avengers", @@array, "Cap", 0)
        team.win_points_up(0)
        assert_equal(1, team.win_points_up(1))
    end

    def test_lose_points_down
        team = Team.new("Avengers", @@array, "Cap", 0)
        team.lose_points_down(0)
        assert_equal(-1, team.lose_points_down(1))
    end
    



end
