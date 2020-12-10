require 'pry'
require_relative 'cat'
require_relative 'dog'

class Owner

  attr_reader :name, :species 
  attr_accessor

  @@all = []

  def initialize(name_para)
    @name = name_para
    @species = "human"
    @@all << self 
  end

  def say_species
    "I am a #{self.species}"
  end

  def self.all
    @@all
  end 

  def self.count 
    self.all.count 
  end

  def self.reset_all 
    self.all.clear
  end

end

darien = Owner.new("Darien")
binding.pry
0