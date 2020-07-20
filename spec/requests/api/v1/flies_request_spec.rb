require 'rails_helper'

RSpec.describe 'Flies request API' do
  before :each do
    @fly1 = create(:fly)
    create_list(:fly, 3)
  end

  it 'can return all flies' do
    get '/api/v1/flies'
    expect(response).to be_successful
    expect(json['data'].count).to eq(4)
  end

  it 'can return a specific fly by id' do
    get "/api/v1/flies/#{@fly1.id}"
    expect(response).to be_successful
    expect(json['data']['id']).to eq(@fly1.id.to_s)
    expect(json['data']['attributes']['category']).to eq(@fly1.category)
  end

  it 'will return status 404 when the fly record does not exist' do
    get '/api/v1/flies/123'
    expect(response).to have_http_status(404)
    expect(response.body).to match(/Couldn't find Fly with 'id'=123/)
  end

  it 'can create a new fly' do
    new_fly_params = { name: 'test name',
      size: '45',
      color: 'red',
      category: 'test category',
      amount: '5' }

    post '/api/v1/flies', params: new_fly_params
    expect(response).to be_successful

    new_fly = Fly.last

    expect(new_fly.name).to eq('test name')
    expect(json['data']['attributes']['name']).to eq(new_fly_params[:name])
    expect(json['data']['attributes']['color']).to eq(new_fly_params[:color])
  end

  it 'will return status 422 when creating fly request is invalid' do
    # missing name
    fly_params = { size: '45', color: 'red', category: 'test category', amount: '5' }

    post '/api/v1/flies', params: fly_params
    expect(response).to have_http_status(422)
    expect(response.body).to match(/Validation failed: Name can't be blank/)
  end

  it 'can update a flies attributes' do
    updated_fly_params = { name: 'The Updated One' }

    patch "/api/v1/flies/#{@fly1.id}", params: updated_fly_params
    expect(response).to be_successful

    updated_fly = Fly.find(@fly1.id)

    expect(updated_fly.name).to_not eq(@fly1.name)
    expect(updated_fly.name).to eq('The Updated One')
  end

  it 'can delete a fly' do
    delete "/api/v1/flies/#{@fly1.id}"
    expect(response).to be_successful
    expect(Fly.all.count).to eq(3)
    expect { Fly.find(@fly1.id) }.to raise_error(ActiveRecord::RecordNotFound)
  end
end
