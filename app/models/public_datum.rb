class PublicDatum < ApplicationRecord

  has_one_attached :dataset
  belongs_to :user
  belongs_to :branch
  has_many :comments, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_name_category_description,
    against: [ :name, :category, :description ],
    using: {
      tsearch: { prefix: true, any_word: true} # <-- now `superman batm` will return something!
    }

end
