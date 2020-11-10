class Movie < ApplicationRecord
  has_many :actors
  validates :title, length: { minimum: 2 }
  validates :year, length: { minimum: 4 }
end
