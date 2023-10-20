require "active_support/concern"

module RatingAverage
  extend ActiveSupport::Concern

  included do
    def average_rating
      ratings.count > 0 ? ratings.average(:score) : 0.0
    end
  end
end