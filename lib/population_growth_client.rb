require 'net/http'
require 'json'

# Population growth client
class PopulationGrowthClient
  # Search population growth by zip code
  def self.search_zip(zip_code)
    url = 'http://population-growth-ps.herokuapp.com/search-zip/'
    uri = URI(url + zip_code.to_s)
    response = Net::HTTP.get_response(uri)
    JSON.parse(response.body) if response.code == '200'
  end
end