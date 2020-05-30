class Branch < ApplicationRecord
  belongs_to :city_government_agency
  has_many :public_data
  has_many :lai_requests
end
