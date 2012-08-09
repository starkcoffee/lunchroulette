require 'groupier'

class LunchGroupier
  include Groupier

  def initialize(group_names, lunch_places)
    @group_names = group_names
    @lunch_places = lunch_places
  end

  def create_groups
    player_groups = random_groups_of(4, Player.all)
    names = @group_names.take_random(player_groups.size)
    places = @lunch_places.take_random(player_groups.size)

    player_groups.zip(names, places).map do |players, name, place|
      LunchGroup.new(players, name, place)
    end
  end
end
