require 'rails_helper'

RSpec.describe 'Images request API' do
  context 'can recieve a base64 image, and return a species with probability' do
    
    it 'Rainbow Trout' do
      result_hash = { 'prob' => '90%', 'species' => 'Rainbow Trout' }

      user_image_recognition(file_reader("rainbow_trout"))

      expect(json['data']['attributes']).to eq(result_hash)
    end

    it 'Brook Trout' do
      result_hash = { 'prob' => '88%', 'species' => 'Brook Trout' }

      user_image_recognition(file_reader("brook_trout"))

      expect(json['data']['attributes']).to eq(result_hash)
    end
  end
end
