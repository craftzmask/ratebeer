class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    total_scores = 0.0
    ratings.each do |rating|
      total_scores += rating.score
    end

    (total_scores / ratings.count)
  end
end
