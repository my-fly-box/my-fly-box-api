require 'rails_helper'

RSpec.describe Fly, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:size) }
    it { should validate_presence_of(:color) }
    it { should validate_presence_of(:type) }
  end

  describe 'relationships' do
    it { should belong_to(:user) }
  end
end
