# encoding: utf-8
require 'random_enumerable'

# a curated collection atm
class LunchPics
  include RandomEnumerable
  @@pics = [
"http://www.thedogfiles.com/wp-content/uploads/2011/03/dog-restuarant.jpg",
"http://nbcoutofbounds.files.wordpress.com/2012/04/twodogs.jpg",
"http://www.funiacs.com/poze/mare/fghdfg_1190045434.jpg"
]

  def collection
    @@pics
  end
end
