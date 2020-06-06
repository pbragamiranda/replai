class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :public_datum
  validates :content, presence: true
end
