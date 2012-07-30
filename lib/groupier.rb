module Groupier

  def random_groups_of(size, collection)
    groups = collection.shuffle.each_slice(size).to_a
    if groups.size > 1 && groups.last.size == 1
      groups << groups.pop + groups.pop
    end
    groups
  end
end
