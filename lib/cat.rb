require 'pry'
require_relative 'owner'

class Cat
    attr_reader :name
    attr_accessor :owner, :mood

    @@all = []

    def initialize (name_para, owner_obj)
      @name = name_para
      @owner = owner_obj
      @mood = "nervous"
      @@all << self
    end

    def self.all
      @@all
    end

end


danny = Owner.new
# binding.pry
# 0