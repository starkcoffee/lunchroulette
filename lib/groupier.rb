module Groupier

  def groups_of(size, collection)
    groups = collection.shuffle.each_slice(size).to_a
    if collection.size % size == 1 and collection.size > 1
      groups << groups.pop + groups.pop
    end
    groups
  end
end
