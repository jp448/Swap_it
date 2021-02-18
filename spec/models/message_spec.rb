require 'rails_helper'

RSpec.describe Message, type: :model do
  # Association test
  describe 'associations' do
    it { should belong_to(:chatroom) }
    it { should belong_to(:user) }
  end
  # Validation tests
  describe 'validations' do
    it { should validate_presence_of(:content) }
  end
end
