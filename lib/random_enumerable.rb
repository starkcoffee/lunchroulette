# expects a method
# collection - which returns an array 
module RandomEnumerable

  def take_random(num)
    if collection.empty?
      []
    elsif num <= collection.size
      take_random_within_range(num)
    else
      take_random_within_range(collection.size) + take_random(num - collection.size)
    end
  end

private
  def take_random_within_range(num)
    collection.shuffle.take(num)
  end
end
