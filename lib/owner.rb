class Owner
  # code goes here
  attr_accessor :species



  @@all = []

  def initialize(species)

    @species = species

    @@all << self
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



end
