

class SportsTeam

#attr_accessor :team_name, :players, :coach

def initialize(team_name, players, coach)
  @team_name = team_name
  @players = players
  @coach = coach
end

#
def team_name
  return @team_name
end

def players
  return @players
end

def coach
  return @coach
end
#

def set_coach_name(new_coach)
  @coach = new_coach
end

def add_new_player(new_player)
  @players = (new_player)
end

def check_player(player)
  player_check = []
  for person in @players
    if person == player
      return player_check
    end
  end
end


end
