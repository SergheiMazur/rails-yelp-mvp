class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates_numericality_of :rating, :only_integer => true, :allow_nil => false,
    :greater_than_or_equal_to => 0,
    :less_than_or_equal_to => 5,
    :message => "Can only be whole number between 0 and 5."
end
