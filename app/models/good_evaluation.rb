class GoodEvaluation < ApplicationRecord
  belongs_to :user
  belongs_to :evaluate_user, class_name: 'User'
end
