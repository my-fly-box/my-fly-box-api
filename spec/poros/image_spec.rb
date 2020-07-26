require 'rails_helper'

describe Image do
  before(:each) do
    @location = File.read('spec/fixtures/base64_image.txt')
    @image = Image.new(@location)
  end

  it 'exists' do
    expect(@image).to be_an_instance_of(Image)
  end

  it 'initializes_with_attributes' do
    expect(@image.id).to eq(nil)
    expect(@image.image).to eq(@location)
  end

  it 'can get species' do
    expect(@image.species).to eq('Rainbow Trout')
  end
end
