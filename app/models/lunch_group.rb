class LunchGroup
  attr_reader :players, :name, :place

  def initialize(players, name, place)
    @players = players
    @name = name
    @place = place
  end
end
