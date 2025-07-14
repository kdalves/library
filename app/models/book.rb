class Book < ApplicationRecord
  belongs_to :category
  belongs_to :author
  belongs_to :publisher

  has_many :books
end
