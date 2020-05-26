class LaiRequest < ApplicationRecord
  belongs_to :user
  belongs_to :city_government_agency
  has_many :request_answers
  validates :status, presence: true, inclusion: { in: %w(Editando "Em andamento" Atrasado Concluído), message:  "Choose one valid category!" }
  validates :category, presence: true, inclusion: { in: %w(Category_one category_two category_three), message:  "Choose one valid category!" }
end
