class AddRankToPairings < ActiveRecord::Migration
  def change
    add_column :pairings, :rank, :float, default: 0
  end
end
