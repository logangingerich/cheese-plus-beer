class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :pairing
  after_save :update_pairing

  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote." }, presence: true

  private

  def update_pairing
    pairing.update_rank
  end
end
