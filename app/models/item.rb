class Item < ApplicationRecord
  belongs_to :user
  has_many_attached :photos
  has_and_belongs_to_many :tags
  has_many :chatrooms, dependent: :destroy
  has_many :items, through: :liked
  has_many :offers_as_asker, :class_name => 'Offer', :foreign_key => 'asker_id'
  has_many :offers_as_receiver, :class_name => 'Offer', :foreign_key => 'receiver_id'

  validates :title, :price, :photos, :description, presence: true
  validates :title, uniqueness: true
end
