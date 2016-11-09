class Prayer < ApplicationRecord
  validates :body, length: { maximum: 140, message: "Oops! Please keep prayer requests under 140 characters!" }
  belongs_to :user
  has_many :comments
end
