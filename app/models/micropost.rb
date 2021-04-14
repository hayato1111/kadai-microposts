class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorite
  has_many :likers, through: :favorite, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
