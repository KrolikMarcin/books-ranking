class Book < ApplicationRecord
  include PgSearch

  pg_search_scope :search_for, against: %i(title author)
end
