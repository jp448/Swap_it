require 'rails_helper'

RSpec.describe Tag, type: :model do
  # Association test
  describe 'associations' do
    it { should have_and_belong_to_many(:items) }
  end
end
