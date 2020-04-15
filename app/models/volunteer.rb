class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :order_managements, dependent: :destroy
  has_many :contractors, through: :order_managements, source: :user, dependent: :destroy
  has_many :categorizings, dependent: :destroy
  has_many :categories, through: :categorizings
  has_many :comments, dependent: :destroy
  mount_uploader :image, ImageUploader
  validates :title, presence: true
  validates :describe, presence: true
  validates :address, presence: true
  validates :date, presence: true
  validates :capacity, presence: true

  validate :date_is_not_past


  def date_is_not_past
    errors.add(:date, "は過去の日時です") if date < DateTime.now
  end
end
