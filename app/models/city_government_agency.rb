class CityGovernmentAgency < ApplicationRecord
  has_many :lai_requests
  has_many :branches
end
