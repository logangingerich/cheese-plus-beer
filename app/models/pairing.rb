class Pairing < ActiveRecord::Base
  belongs_to :cheese
  belongs_to :beer
end
