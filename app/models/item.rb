class Item < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_and_belongs_to_many :tags
  validates :title, :price, :photos, :description, presence: true
  validates :title, uniqueness: true
end