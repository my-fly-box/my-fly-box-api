class BaseService
  def conn(url)
    Faraday.new(url)
  end

  def json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
