class Character < ApplicationRecord
  has_many :tags
  has_many :categories, through: :tags
  belongs_to :house
end
