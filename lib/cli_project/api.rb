class API

  include HTTParty

  base_uri 'ghibliapi.herokuapp.com'

  def self.get_films
    films_array = HTTParty.get('https://ghibliapi.herokuapp.com/films')
    puts films_array.parsed_response
    #response.body, response.code, response.message, response.headers.inspect
  end

  def self.get_species
    species_array = HTTParty.get('https://ghibliapi.herokuapp.com/species')
    puts species_array.parsed_response
  end

end

# studio_ghibli = StudioGhibli.new("studioghibli")
# puts studio_ghibli.films
# puts studio_ghibli.species
