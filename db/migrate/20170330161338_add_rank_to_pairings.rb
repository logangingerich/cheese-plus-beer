class AddRankToPairings < ActiveRecord::Migration
  def change
    add_column :pairings, :rank, :float
  end
end
