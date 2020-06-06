class LaiRequest < ApplicationRecord
  belongs_to :user
  belongs_to :branch
  has_many :request_answers
  validates :status, presence: true, inclusion: { in: %w(Editando Enviado Atrasado Concluído) }
  CATEGORIES = %w[Transparência Financeira Saúde Educação Infraestrutura Segurança]
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  ANONYMITY = [true, false]
  validates :anonymity, inclusion: { in: ANONYMITY }


  attr_accessor :city_government_agency_id
end
