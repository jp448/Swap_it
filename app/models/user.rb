class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items, dependent: :destroy
  geocoded_by :address
  after_validation :geocode#, if: :will_save_change_to_address?

  has_one_attached :photo

  def address
    [streetnumber, street, city, zipcode].compact.join(', ')
  end
end
