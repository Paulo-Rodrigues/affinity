class Thought < ApplicationRecord
  belongs_to :user
  has_many :votes, as: :votable

  validates :body, presence: true, length: {maximum: 500}
end
