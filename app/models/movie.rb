class Movie < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  has_many :bookmarks
  has_many :list, through: :bookmarks
end
