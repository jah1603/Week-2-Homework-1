class Team

attr_accessor(:players, :points, :coach)
attr_reader(:name)

def initialize(name, players, coach, points)
    @name = name
    @players = players
    @coach = coach
    @points = points
end

def add_player(new_player)
 @players.push(new_player)
end

def set_coach_name(new_name)
  @coach = new_name
end

def find_player(name)
  @players.include? name
end

def update_points(result)

  if result == "victory"
    @points += 3
  elsif result == "defeat"
    @points -= 3
  else return
end

end

end
