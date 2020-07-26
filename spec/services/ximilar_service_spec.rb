require 'rails_helper'

RSpec.describe 'XimilarService' do
  before :each do
    @service = XimilarService.new
    @image = File.read('spec/fixtures/base64_image.txt')
  end

  it 'exists' do
    expect(@service).to be_an_instance_of(XimilarService)
  end

  it 'can return 200 with results' do
    response = @service.get_species(@image)
    expect(response[:status][:code]).to eq(200)
    expect(response[:status][:text]).to eq('OK')
  end
end
