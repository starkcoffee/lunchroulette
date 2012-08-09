# encoding: utf-8
require 'random_enumerable'

# a curated collection atm
class LunchPlaces
  include RandomEnumerable
  @@names = [
"Cô Cô",
"Kuchi",
"Altes Europa",
"Monsiuer Vuong",
"Yam Yam",
"Antipodes",
"Luigi Zuckermann",
"Yumcha Heroes",
"Good Morning Vietam",
"Japanes Place Across From Base"
]

  def collection
    @@names
  end
end
