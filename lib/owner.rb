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
    "I am a #{self.species}."
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

  # def cats
  #   binding.pry
  #   cats = []                             #Refactored below
  #   Cat.all.each do |cat|
  #     if cat.owner.name == self.name
  #       cats << cat
  #     end
  #   end
  #   cats
  # end

  def cats
    Cat.all.select do |cat|   
      cat.owner == self
    end
  end

end

# darien = Owner.new("Darien")
# danny = Owner.new("Danny")
0