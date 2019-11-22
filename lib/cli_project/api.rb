class API

  BASE_URL = "https://ghibliapi.herokuapp.com"

  def self.get_films
    results = HTTParty.get("#{BASE_URL}/films")
    results = results.parsed_response
    results.each do |film_hash|
      Film.create_from_collection(film_hash)
    end
  end

  def self.get_species
    species_array = HTTParty.get("#{BASE_URL}/species")
    species_array.parsed_response
  end

  def self.get_locations

  end

end

# studio_ghibli = StudioGhibli.new("studioghibli")
# puts studio_ghibli.films
# puts studio_ghibli.species
