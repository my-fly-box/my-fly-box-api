class XimilarService < BaseService
  def get_species(image)
      response = conn('https://api.ximilar.com').post('/recognition/v2/classify') do |f|
      f.headers['Content-Type'] = 'application/json'
      f.headers['authorization'] = ENV['ximilar_token']
      f.body = { 'task_id': ENV['ximilar_task'], 'records': [{ '_base64': image.to_s }] }.to_json
    end
    json(response)
  end
end
