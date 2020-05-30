class Branch < ApplicationRecord
  belongs_to :city_government_agency
  has_many :public_data
  has_many :lai_requests

  def municipality
    city_government_agency.city_name
  end
end
