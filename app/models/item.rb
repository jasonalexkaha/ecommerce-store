class Item < ApplicationRecord
  belongs_to :brand
  validates :name, presence: true
  validates :price, presence: true
end
