class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :votes, dependent: :destroy
  has_many :pairings
  has_many :likes, dependent: :destroy
  has_many :custom_pairings

  def liked(pairing)
    likes.where(pairing_id: pairing.id).first
  end
end
