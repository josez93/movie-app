class Movie < ApplicationRecord
  validates :title, length: { minimum: 2 }
  validates :year, length: { minimum: 4 }
end
