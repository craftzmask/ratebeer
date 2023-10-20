class Brewery < ApplicationRecord
  has_many :beers, dependent: :destroy
  has_many :ratings, through: :beers

  def average_rating
    ratings.count > 0 ? ratings.average(:score) : 0.0
  end
end
