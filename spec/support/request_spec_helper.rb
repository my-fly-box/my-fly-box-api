module RequestSpecHelper
  def json
    JSON.parse(response.body)
  end

  def user_image_recognition(image)
    new_image_params = { base_64: image }
    post '/api/v1/images', params: new_image_params
    expect(response).to be_successful
  end

  def file_reader(species)
    File.read("spec/fixtures/#{species}.txt")
  end
end
