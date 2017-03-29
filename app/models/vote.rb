class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :pairing

  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote." }, presence: true

end
