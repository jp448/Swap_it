require 'rails_helper'

RSpec.describe Item, type: :model do
  # Association test
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many_attached(:photos) }
    it { should have_and_belong_to_many(:tags) }
    it { should have_many(:items).through(:liked) }
    it { should have_many(:offers_as_asker) }
    it { should have_many(:offers_as_receiver) }
  end
  # Validation tests
  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:photos) }
    it { should validate_presence_of(:description) }
    it { should validate_uniqueness_of(:title) }
    it { should validate_inclusion_of(:price).in_range(0..3) }
  end
end
