class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :items, dependent: :destroy
  has_many :chatrooms, dependent: :destroy
  has_many :liked_items, through: :liked, source: :items
  has_one_attached :photo

  validates :username, :location, :photo, :street, :zipcode, :streetnumber, :city, presence: true
  validates :username, uniqueness: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def address
    [streetnumber, street, city, zipcode].compact.join(', ')
  end
end
