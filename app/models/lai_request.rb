class LaiRequest < ApplicationRecord
  belongs_to :user
  belongs_to :city_government_agency
  has_many :request_answers
  validates :status, presence: true, inclusion: { in: %w(Editando Em\ andamento Atrasado Concluído) }
  validates :category, presence: true, inclusion: { in: CATEGORIES }

  CATEGORIES = %w[Category_one Category_two Category_three]
end
