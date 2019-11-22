class API

  BASE_URL = "https://ghibliapi.herokuapp.com"

  def self.query_film_db
    results = HTTParty.get("#{BASE_URL}/films")
    results = results.parsed_response
    results.each do |film_hash|
      Film.create_from_collection(film_hash)
    end
  end

  def self.species
    species_array = HTTParty.get('https://ghibliapi.herokuapp.com/species')
    species_array.parsed_response
  end

end

# studio_ghibli = StudioGhibli.new("studioghibli")
# puts studio_ghibli.films
# puts studio_ghibli.species
