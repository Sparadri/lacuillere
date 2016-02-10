module RestaurantHelper

  def average_rating(reviews)
    sum = 0
    reviews.each { |review| sum += review.rating }
    reviews.length == 0 ? "no rating" : sum / reviews.length
  end

end
