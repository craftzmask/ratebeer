class Beer < ApplicationRecord
  belongs_to :brewery
  has_many :ratings

  def average_rating
    # ratings is object model which contains average()
    ratings.average(:score)
  end
end
