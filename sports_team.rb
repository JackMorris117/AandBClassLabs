class Team
    attr_reader :name
    attr_accessor :coach, :players, :points

    
    def initialize(name, players, coach, points)
        @name = name
        @players = players
        @coach = coach
        @points = points
    end

    def set_coach(coach)
        @coach = coach
    end

    def add_to_array(players)
        @players << "Spider-Man"
    end

    def check_if_in_array(players)
      if @players == players
        return true
      else false
      end
    end

    def win_points_up(points)
        return @points += points
    end

    def lose_points_down(points)
        return @points -= points
    end


end
