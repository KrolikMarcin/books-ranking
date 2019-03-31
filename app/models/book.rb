class Book < ApplicationRecord
  has_many :rates, dependent: :destroy
  include PgSearch

  pg_search_scope :search_for, against: %i[title author]

  def self.sorted_books
    joins(:rates).group(:id).order('avg(rates.number) DESC')
  end

  def find_rate(user)
    rates.find_by(user: user)
  end

  def average
    rates.average(:number)
  end
end
