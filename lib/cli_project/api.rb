class API

  include HTTParty

  attr_accessor :name

  base_uri 'ghibliapi.herokuapp.com'

  def initialize(service) #could add page as second argument. service is here in case we want to add another api?
    @options = { query: { site: service} } ##not sure how the @options hash is used
  end

  def films
    self.class.get("/films", @options)##I think self.class makes this a class method because we are using 'extend' to import the httparty module, not 'include' (rather than separating the modules into instance and class methods)
  end

  def species
    self.class.get("/species", @options)
  end

end

# studio_ghibli = StudioGhibli.new("studioghibli")
# puts studio_ghibli.films
# puts studio_ghibli.species
