class Tag < ApplicationRecord
  belongs_to :character
  belongs_to :category
end
