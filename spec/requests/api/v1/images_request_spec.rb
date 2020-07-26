require 'rails_helper'

RSpec.describe 'Images request API' do
  it 'can recieve a base64 image, and return a species with probability' do
    image = File.read('spec/fixtures/base64_image.txt')
    new_image_params = { base_64: image }

    post '/api/v1/images', params: new_image_params
    expect(response).to be_successful

    result_hash = { 'prob' => '90%', 'species' => 'Rainbow Trout' }
    expect(json['data']['attributes']).to eq(result_hash)
  end
end
