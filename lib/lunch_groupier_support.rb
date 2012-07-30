require 'lunch_groupier'
require 'animal_names'

module LunchGroupierSupport
  def lunch_groupier
    LunchGroupier.new(AnimalNames.new)
  end
end
