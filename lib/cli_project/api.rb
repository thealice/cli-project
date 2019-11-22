class API

  include HTTParty

  base_uri 'ghibliapi.herokuapp.com'

  def self.films
    films_array = HTTParty.get('https://ghibliapi.herokuapp.com/films')
    films_hash = {}
    films_with_attributes = films_array.parsed_response.map do |hash|
      films_hash[:title] = hash["title"]
      films_hash[:description] = hash["description"]
      films_hash[:species_links] = hash["species"]
    end
    puts films_hash
  end

  def self.species
    species_array = HTTParty.get('https://ghibliapi.herokuapp.com/species')
    species_array.parsed_response
  end

end

# studio_ghibli = StudioGhibli.new("studioghibli")
# puts studio_ghibli.films
# puts studio_ghibli.species
