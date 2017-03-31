class Pairing < ActiveRecord::Base
  belongs_to :cheese
  belongs_to :beer

  has_many :votes, dependent: :destroy

  def up_votes
    votes.where(value: 1).count
  end

  def down_votes
    votes.where(value: -1).count
  end

  def points
    votes.sum(:value)
  end

  def update_rank
    new_rank = points
    update_attribute(:rank, new_rank)
  end
end
