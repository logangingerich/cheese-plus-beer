class Cheese < ActiveRecord::Base
  has_many :beers, through: :pairings
  has_many :pairings
  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")
  end
end
