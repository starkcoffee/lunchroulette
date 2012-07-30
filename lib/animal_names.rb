class AnimalNames
  @@names = [
    "Beavers",
    "Giselles",
    "Giraffes",
    "Crocodiles",
    "Kangaroos",
  ]

  def take_random(num)
    @@names.shuffle.take(num)
  end
end
