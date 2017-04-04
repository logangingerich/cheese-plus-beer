class RemoveVotesFromPairings < ActiveRecord::Migration
  def change
    remove_column :pairings, :votes, :integer
  end
end
