class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @@all << self
    self.pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all =[]
  end

  def self.count
    @@all.length
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(fish_name)
    self.pets[:fishes] << Fish.new(fish_name)

  end


end
