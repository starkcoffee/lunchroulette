require 'lunch_groupier'
require 'animal_names'
require 'lunch_places'

module LunchGroupierSupport
  def lunch_groupier
    LunchGroupier.new(AnimalNames.new, LunchPlaces.new)
  end
end
