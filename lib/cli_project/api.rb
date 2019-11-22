class API

  include HTTParty

  attr_accessor :name

  base_uri 'ghibliapi.herokuapp.com'

  def self.get_films
    response = HTTParty.get('https://ghibliapi.herokuapp.com/films')
    binding.pry
    puts response.parsed_response
    #response.body, response.code, response.message, response.headers.inspect
  end

  def self.get_species
    self.class.get("/species")
  end

end

# studio_ghibli = StudioGhibli.new("studioghibli")
# puts studio_ghibli.films
# puts studio_ghibli.species
