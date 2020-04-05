class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :order_managements, dependent: :destroy
  has_many :contractor, through: :order_managements, source: :user, dependent: :destroy
  has_many :categorizings, dependent: :destroy
  has_many :categories, through: :categorizings
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
end
