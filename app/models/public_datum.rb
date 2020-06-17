class PublicDatum < ApplicationRecord

  has_one_attached :dataset
  # validates :dataset, presence: true
  belongs_to :user
  belongs_to :branch
  has_many :comments, dependent: :destroy
  validates :category, presence: true
  validates :name, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_name_category_description,
    against: [ :name, :category, :description ],
    using: {
      tsearch: { prefix: true, any_word: true} # <-- now `superman batm` will return something!
    }
  attr_accessor :city_government_agency_id

  POWERS = [ "Legislativo", "Executivo" ]
  CATEGORIES = [ "Transparência", "Financeira", "Saúde", "Educação", "Infraestrutura", "Segurança" ]
end
