class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  has_many :volunteers, dependent: :destroy
  has_many :order_managements, dependent: :destroy
  has_many :ordered_volunteers, through: :order_managements, source: :volunteer, dependent: :destroy
  has_many :comments
end
