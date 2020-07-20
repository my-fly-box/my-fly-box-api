require 'rails_helper'

RSpec.describe 'Catches request API' do
  before :each do
    @fly1 = create(:fly)
    @catch1 = create(:catch, fly_id: @fly1.id)
    create_list(:catch, 3)
  end

  it 'can return all catches' do
    get '/api/v1/catches'
    expect(response).to be_successful
    expect(json['data'].length).to eq(4)
  end

  it 'can return a specific catch by id' do
    get "/api/v1/catches/#{@catch1.id}"
    expect(response).to be_successful
    expect(json['data']['id']).to eq(@catch1.id.to_s)
    expect(json['data']['attributes']['species']).to eq(@catch1.species)
    expect(json['data']['attributes']['fly_id']).to eq(@fly1.id)
  end

  it 'will return status 404 when the catch record does not exist' do
    get '/api/v1/catches/123'
    expect(response).to have_http_status(404)
    expect(response.body).to match(/Couldn't find Catch with 'id'=123/)
  end

  it 'can create a new catch' do
    new_catch_params = { species: 'New Species',
      location: 'Moms House',
      length: 111,
      weight: 45,
      fly_id: @fly1.id }

    post '/api/v1/catches', params: new_catch_params

    expect(response).to be_successful
    new_catch = Catch.last

    expect(new_catch.species).to eq(new_catch_params[:species])
    expect(new_catch.fly).to eq(@fly1)
    expect(json['data']['attributes']['species']).to eq(new_catch_params[:species])
    expect(json['data']['attributes']['length']).to eq(new_catch_params[:length])
  end

  it 'will return status 422 when creating catch request is invalid' do
    # missing species and length
    new_catch_params = { location: 'Moms House', weight: 45, fly_id: @fly1.id }

    post '/api/v1/catches', params: new_catch_params
    expect(response).to have_http_status(422)
    expect(response.body).to match(/Validation failed: Species can't be blank, Length can't be blank/)
  end

  it 'can edit a particular catches attributes' do
    catch_params = { species: 'Updated Species',
      location: 'Moms House',
      length: 222, weight: 1,
      fly_id: @fly1.id }

    patch "/api/v1/catches/#{@catch1.id}", params: catch_params
    expect(response).to be_successful

    updated_catch = Catch.find(@catch1.id)
    expect(updated_catch.species).to eq('Updated Species')
  end

  it 'can delete a particular catch by id' do
    delete "/api/v1/catches/#{@catch1.id}"
    expect(response).to be_successful
    expect(Catch.all.count).to eq(3)
    expect { Catch.find(@catch1.id) }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
