class Cheese < ActiveRecord::Base
  has_many :beers, through: :pairings
  has_many :pairings
  validates :name, presence: true
  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")
  end
end
