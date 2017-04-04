class RemoveCheeseIdFromBeers < ActiveRecord::Migration
  def change
    remove_column :beers, :cheese_id, :integer
  end
end
