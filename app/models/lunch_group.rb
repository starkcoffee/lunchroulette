class LunchGroup
  attr_reader :players, :name

  def initialize(players, name)
    @players = players
    @name = name
  end
end
