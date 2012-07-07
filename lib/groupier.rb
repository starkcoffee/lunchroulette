module Groupier

  def groups_of(size, collection)
    collection.shuffle.each_slice(size).to_a
  end
end
