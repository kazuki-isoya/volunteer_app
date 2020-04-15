class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :volunteer, optional: true

  validates :content, length: {maximum: 200}
end
