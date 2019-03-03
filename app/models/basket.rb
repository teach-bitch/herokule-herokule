class Basket < ApplicationRecord
  belongs_to :user
  belongs_to :product
  has_one :facturation
end
