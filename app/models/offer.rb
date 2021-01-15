class Offer < ApplicationRecord
  belongs_to :asker, :class_name => 'Item'
  belongs_to :receiver, :class_name => 'Item'
  has_one :asker_user, through: :asker, source: :user
  has_one :receiver_user, through: :receiver, source: :user
end
