class Item < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  validates :title, :price, :photos, :description, presence: true
  validates :title, uniqueness: true
end
