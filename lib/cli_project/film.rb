class Film
  attr_accessor :id, :title, :description, :release_date, :species, :locations

  @@all = []

  def initialize(attributes) #mass assignment
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_from_collection
    films_array = API.films
    films_array.each do |hash|
      Film.create(hash)
    end
  end

  def self.create(attributes)
    new_film = Film.new(attributes)
    new_film.save
  end


end
