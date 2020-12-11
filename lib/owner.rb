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

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(cat_name)
    Cat.new(cat_name, self)
  end 

  def buy_dog(dog_name)
    Dog.new(dog_name, self)
  end 

  def walk_dogs
    self.dogs.map do |dog|
      dog.mood = "happy"
    end
  end 

  def feed_cats
    self.cats.map do |cat|
      cat.mood = "happy"
    end 
  end

  def sell_pets
    self.cats.map do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end 
    self.dogs.map do |dog|
      dog.mood ="nervous"
      dog.owner = nil 
    end 
  end 

  def list_pets 
     "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  
  end 

end
