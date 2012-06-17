class CreateCombinators < ActiveRecord::Migration
  def change
    create_table :combinators do |t|
      t.string :name

      t.timestamps
    end
  end
end
