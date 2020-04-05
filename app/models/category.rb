class Category < ApplicationRecord
  has_many :categorizings, dependent: :destroy
  has_many :volunteers, through: :categorizings
  mount_uploader :icon, ImageUploader
end
