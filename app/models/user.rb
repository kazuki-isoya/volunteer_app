class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :volunteers, dependent: :destroy
  has_many :order_managements, dependent: :destroy
  has_many :ordered_volunteers, through: :order_managements, source: :volunteer, dependent: :destroy
  has_many :comments
  has_many :good_evaluations
  has_many :evaluatings, through: :good_evaluations, source: :evaluate_user
  has_many :reverse_good_evaluations, class_name: 'GoodEvaluation', foreign_key: 'evaluate_user_id'
  has_many :evaluated_users, through: :reverse_good_evaluations, source: :user
  mount_uploader :icon, ImageUploader

  def evaluate(other_user)
    unless self == other_user
      self.good_evaluations.find_or_create_by(evaluate_user_id: other_user.id)
    end
  end

  def unevaluate(other_user)
    good_evaluation = self.good_evaluations.find_by(evaluate_user_id: other_user.id)
    good_evaluation.destroy if good_evaluation
  end

  def evaluating?(other_user)
    self.evaluatings.include?(other_user)
  end


end
