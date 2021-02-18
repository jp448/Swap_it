require 'rails_helper'

RSpec.describe User, type: :model do
  # Association test
  describe 'associations' do
    it { should have_many(:items).dependent(:destory) }
    it { should have_many(:chatrooms).dependent(:destory) }
    it { should have_many(:liked_items).through(:liked).source(:items) }
    it { should have_one_attached(:photo) }
  end
  # Validation tests
  describe 'validations' do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:photo) }
    it { should validate_presence_of(:street) }
    it { should validate_presence_of(:zipcode) }
    it { should validate_presence_of(:streetnumber) }
    it { should validate_presence_of(:city) }
    it { should validate_uniqueness_of(:username) }
  end
end
