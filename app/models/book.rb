class Book < ApplicationRecord
  belongs_to :category
  belongs_to :author
  belongs_to :publisher

  has_many :books

  validates :title, presence: true
  validates :categoria, presence: true
  validates :author, presence: true
end
