class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :volunteer, optional: true
end
