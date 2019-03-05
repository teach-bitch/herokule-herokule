class Product < ApplicationRecord
  belongs_to :category, optional: true
  has_one_attached :image
  has_many :line_items, dependent: :nullify
end
