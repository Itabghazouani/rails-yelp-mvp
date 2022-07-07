class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: (0..5) },
                     numericality: { only_integer: true }
end


# GET "restaurants/38/reviews/new"
# POST "restaurants/38/reviews"
