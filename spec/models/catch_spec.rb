require 'rails_helper'

RSpec.describe Catch, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:species) }
    it { should validate_presence_of(:image) }
    it { should validate_presence_of(:length) }
    it { should validate_presence_of(:weight) }
    it { should validate_presence_of(:location) }
  end

  describe 'relationships' do
    it { should belong_to :fly }
  end
end
