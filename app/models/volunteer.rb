class Volunteer < ApplicationRecord
  belongs_to :user
  has_many :order_managements
end
