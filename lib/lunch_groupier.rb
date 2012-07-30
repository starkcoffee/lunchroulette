require 'groupier'

class LunchGroupier
  include Groupier

  def initialize(group_names)
    @group_names = group_names
  end

  def create_groups
    player_groups = random_groups_of(4, Player.all)
    names = @group_names.take_random(player_groups.size)

    player_groups.zip(names).map do |players, name|
      LunchGroup.new(players, name)
    end
  end
end
