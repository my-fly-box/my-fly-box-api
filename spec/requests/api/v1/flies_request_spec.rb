require 'rails_helper'

RSpec.describe 'Flies request API' do
  before:each do
    @fly1 = create(:fly)
    @fly2 = create(:fly)
    @fly3 = create(:fly)
    @fly4 = create(:fly)
  end

  it 'can return all flies' do
    get '/api/v1/flies'
    expect(response).to be_successful

    flies= JSON.parse(response.body)
    expect(flies["data"].count).to eq(4)
  end

  it 'can create a fly' do
    fly_params = { name: 'test name', size: '45', color: 'red', category: 'test category', amount: '5'}

    post '/api/v1/flies', params: (fly_params)
    expect(response).to be_successful

    new_fly= Fly.last

    expect(new_fly.name).to eq('test name')
  end

  it "can delete a fly" do
    delete "/api/v1/flies/#{@fly4.id}"
    expect(response).to be_successful
    expect(Fly.all.count).to eq(3)
    expect{Fly.find(@fly4.id)}.to raise_error(ActiveRecord::RecordNotFound)
  end

  it "can return a specific fly by id" do
    get "/api/v1/flies/#{@fly1.id}"
    expect(response).to be_successful
    fly = JSON.parse(response.body)
    expect(fly["data"]["id"]).to eq(@fly1.id.to_s)
    expect(fly["data"]["attributes"]["category"]).to eq(@fly1.category)
  end

  it "can update a flies attributes" do
    original_name = @fly1.name
    updated_fly_params = {name: "The Updated One", favorited?: true}

    patch "/api/v1/flies/#{@fly1.id}", params: (updated_fly_params)

    expect(response).to be_successful
    updated_fly = Fly.find(@fly1.id)

    expect(updated_fly.name).to_not eq(original_name)
    expect(updated_fly.name).to eq("The Updated One")
    expect(updated_fly.favorited?).to eq(true)
  end
end
