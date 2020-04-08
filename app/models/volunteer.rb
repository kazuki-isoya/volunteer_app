class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :order_managements, dependent: :destroy
  has_many :contractors, through: :order_managements, source: :user, dependent: :destroy
  has_many :categorizings, dependent: :destroy
  has_many :categories, through: :categorizings
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader

  validate :date_is_not_past

  def date_is_not_past
    errors.add(:date, "が適切ではありません") if date.nil? || date < Date.today
  end
end
