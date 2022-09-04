class Brand < ApplicationRecord
    has_one_attached :image
    has_many :items

    validates :name, presence: true
end
