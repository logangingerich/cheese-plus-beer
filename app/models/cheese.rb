class Cheese < ActiveRecord::Base
  has_and_belongs_to_many :beer
  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search}%")
  end
end
