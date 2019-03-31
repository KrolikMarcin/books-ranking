class Book < ApplicationRecord
  has_many :rates, dependent: :destroy
  include PgSearch

  pg_search_scope :search_for, against: %i[title author]

  scope :sorted_books, -> { joins(:rates).group(:id).order('avg(rates.number) DESC') }

  def find_rate(author)
    rates.find_by(user: author)
  end
end
