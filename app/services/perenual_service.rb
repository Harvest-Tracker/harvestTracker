class PerenualService
  def edible_outdoor_plants_list
    get_url("/api/species-list", params: {edible: true, poisonous: false, indoor: false})
  end

  def get_url(url, params: nil)
    response = conn.get(url, params)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://perenual.com") do |faraday|
      faraday.headers["Content-Type"] = "application/json"
      faraday.params["key"] = ENV["perenual_key"]
    end
  end
end
