class Rate < ApplicationRecord
  belongs_to :user
  belongs_to :book

  def one_rate
    errors.add(:base, 'You arleady rating this book') unless
      Rate.find_by(user: user, book: book).nil?
  end
end
