class Category < ApplicationRecord
  has_many :categorizings
  has_many :volunteers, through: :categorizings
end
