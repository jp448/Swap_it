class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many :messages, dependent: :destroy
end
