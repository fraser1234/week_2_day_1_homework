class Team
attr_reader :team_name, :players, :coach
attr_writer :team_name, :players, :coach


  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
  end

  def add_player(new_player)
    return @players += new_player
  end




  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end

  # def set_coach(name)
  #   @coach = name
  # end
end
