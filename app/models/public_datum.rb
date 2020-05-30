class PublicDatum < ApplicationRecord
  has_one_attached :dataset
  belongs_to :user
  has_many :comments
end
