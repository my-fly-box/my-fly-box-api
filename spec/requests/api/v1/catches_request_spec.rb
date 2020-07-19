require 'rails_helper'

RSpec.describe 'Flies request API' do
  before:each do
    @fly1 = create(:fly)
    @catch1 = create(:catch)
    @catch2 = create(:catch)
    @catch3 = create(:catch)
    @catch4 = create(:catch)
  end

  it "can return all catches" do
    get '/api/v1/catches'
    expect(response).to be_successful
    catches = JSON.parse(response.body)
    expect(catches["data"].length).to eq(4)
  end

  it "can delete a particular catch by id" do
    delete "/api/v1/catches/#{@catch4.id}"
    expect(response).to be_successful
    expect(Catch.all.count).to eq(3)
    expect{Catch.find(@catch4.id)}.to raise_error(ActiveRecord::RecordNotFound)
  end

  it "can create a new catch with attributes and a fly id" do
    new_catch_params = {species: "New Species", location: "Moms House", length: 111, weight: 45, fly_id: @fly1.id}
    post "/api/v1/catches", params: (new_catch_params)

    expect(response).to be_successful
    new_catch= Catch.last

    expect(new_catch.species).to eq(new_catch_params[:species])
    expect(new_catch.fly).to eq(@fly1)
    catch = JSON.parse(response.body)['data']
    expect(catch['attributes']['species']).to eq(new_catch_params[:species])
    expect(catch['attributes']['length']).to eq(new_catch_params[:length])
  end

  it "can edit a particular catches attributes" do
    catch_params = {species: "Updated Species", location: "Moms House", length: 222, weight: 01, fly_id: @fly1.id}
    patch "/api/v1/catches/#{@catch1.id}", params: (catch_params)
    expect(response).to be_successful
    updated_catch = Catch.find(@catch1.id)
    expect(updated_catch.species).to eq("Updated Species")
  end
end
