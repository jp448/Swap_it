require 'rails_helper'

RSpec.describe Liked, type: :model do
  # Association test
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:item) }
  end
  # Validation tests
  describe 'validations' do
    it { should validate_uniqueness_of(:user_id).scoped_to(:item_id) }
  end
end
