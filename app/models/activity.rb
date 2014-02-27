class Activity < ActiveRecord::Base

  # relationships
  has_many :acts
  has_many :users, through: :acts

  # validations
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }, uniqueness: true
  validates :calories, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
