class Beer < ActiveRecord::Base
  has_and_belongs_to_many :cheese
  def self.search(search)
    where("LOWER(name) LIKE ?", "%#{search.downcase}%")
  end
end
