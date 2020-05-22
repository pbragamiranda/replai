class LaiRequest < ApplicationRecord
  belongs_to :user
  has_many :request_answer
end
