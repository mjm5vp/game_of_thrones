class Category < ApplicationRecord
  has_many :tags
  has_many :characters, through: :tags
end
