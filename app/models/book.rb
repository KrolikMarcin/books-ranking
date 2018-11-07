class Book < ApplicationRecord
  has_many :rates
  include PgSearch

  pg_search_scope :search_for, against: %i(title author)

  def find_rate(user)
    rates.find_by(user: user)
  end

  def average
    rates.calculate(:average, :number)
  end
end
