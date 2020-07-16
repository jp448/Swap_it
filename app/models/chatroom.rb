class Chatroom < ApplicationRecord
  belongs_to :user
  belongs_to :item
  has_many :messages
end
