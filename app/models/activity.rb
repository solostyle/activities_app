class Activity < ActiveRecord::Base
  validates :activity, presence: true, length: { minimum: 3, maximum: 50 }
  validates :calories, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
