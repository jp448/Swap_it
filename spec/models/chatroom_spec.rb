require 'rails_helper'

RSpec.describe Chatroom, type: :model do
  describe 'associations' do
    # Association test
    it { should belong_to(:user) }
    it { should belong_to(:item) }
    it { should have_many(:messages).dependent(:destroy) }
  end
end
