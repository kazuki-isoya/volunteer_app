class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :order_managements, dependent: :destroy
  has_many :contractors, through: :order_managements, source: :user, dependent: :destroy
  has_many :categorizings, dependent: :destroy
  has_many :categories, through: :categorizings
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: {maximum: 30}
  validates :describe, presence: true, length: {maximum: 300}
  validates :address, presence: true, length: {maximum: 300}
  validates :date, presence: true
  validates :capacity, presence: true, numericality: {only_integer: true, greater_than_or_equal_to: 1}

  validate :date_is_not_past


  def date_is_not_past
    errors.add(:date, "は過去の日時です") if date < DateTime.now
  end
end
