class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating,inclusion: { in: [0,1,2,3,4,5], allow_nil: false }, numericality: {only_integer: true }
  validates :content, presence: true
  validates :rating, presence: true
  validates :restaurant, presence: true
end
