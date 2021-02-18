require 'rails_helper'

RSpec.describe Offer, type: :model do
  # Association test
  describe 'associations' do
    it { should belong_to(:asker).class_name('Item') }
    it { should belong_to(:receiver).class_name('Item') }
    it { should have_one(:asker_user).through(:asker).source(:user) }
    it { should have_one(:receiver_user).through(:receiver).source(:user) }
  end
end
