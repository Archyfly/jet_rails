# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# for item in 1..10 do
#   team = Team.create(team_name: "team_#{item}")
#   gamer = Gamer.create(name: "name_#{item}", surname: "surname_#{item}", age: "#{item+20}", team_id: "#{item}")
#   match = Match.create(location: "loco_#{item}", duration: "1:#{item+30}")
#   achieve = Achieve.create(description: "#{item}km")
#
# end
TEAMS = ['Orlando', 'Chicago', 'Buffalo', 'RedDragon']
MATCH_LOCATIONS = ['New York', 'Washington', 'Paris', 'London', 'Seul', 'Irkutsk', 'Tokyo', 'Litva']
ACHIEVES = ['10 km per match', '5 goals per match', '1000 jumps']

TEAMS.each_with_index do |team, team_index|
  t = Team.create(team_name: "#{team}" )
  for item in 1..6 do
    gamer = Gamer.create(name: "#{team}Gamer_#{item}", surname: "#{team}Surn_#{item}", age: "#{item+20}", team_id: "#{team_index+1}")
  end
end

MATCH_LOCATIONS.each { |location| match = Match.create(location: "#{location}", duration: "1:30") }
ACHIEVES.each { |ach| achieve = Achieve.create(description: "#{ach}") }


