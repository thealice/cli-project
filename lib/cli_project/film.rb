class Film
  attr_accessor :id, :title, :description, :release_date, :species, :locations

  @@all = []

  def initialize(attributes) #mass assignment
    attributes.each do |key, value|
      self.send("#{key}=", value)
    end
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end


end
