class Actor < ApplicationRecord
  belongs_to :movie
  # validates :first_name, length: { minimum: 2 }
  # validates :last_name, length: { minimum: 2 }
  # validates :known_for, presence: true
  # validates :age, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0 }
end
