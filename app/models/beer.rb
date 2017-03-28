class Beer < ActiveRecord::Base
  has_many :cheeses, through: :pairings
  has_many :pairings
  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")
  end
end
