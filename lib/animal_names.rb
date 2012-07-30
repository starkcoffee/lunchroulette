require 'random_enumerable'

class AnimalNames
  include RandomEnumerable
  @@names = [
    "Beavers",
    "Giselles",
    "Giraffes",
    "Crocodiles",
    "Kangaroos",
  ]

  def collection
    @@names
  end
end
