module RatingsAverage
  def average_rating
    if ratings.empty?
      nil
    else
      ratings.reduce(0) { |sum, r| sum + r.score } / ratings.count.to_f
    end
  end
end
