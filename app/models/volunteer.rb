class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :order_managements, dependent: :destroy
  has_many :contractor, through: :order_managements, source: :user, dependent: :destroy
  has_many :categorizings
  has_many :cagagories, through: :categorizings
end
