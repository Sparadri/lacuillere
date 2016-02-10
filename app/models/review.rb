class Review < ActiveRecord::Base
  belongs_to :restaurant

  RATING_SCALE = [0, 1, 2, 3, 4, 5]

  validates :restaurant, presence: true
  validates :content, presence: true
  validates :rating, inclusion: { in: RATING_SCALE }

end
