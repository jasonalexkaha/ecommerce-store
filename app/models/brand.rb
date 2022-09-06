class Brand < ApplicationRecord
    has_one_attached :image
    has_many :items, dependent: :delete_all

    validates :name, presence: true, uniqueness: true
end
