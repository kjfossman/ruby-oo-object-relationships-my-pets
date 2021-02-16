require 'pry'

class Cat
@@cats = []

  attr_accessor :mood, :owner
  attr_reader :name

  def initialize(name, owner)
   
    @owner = owner
    @name = name
    @mood = 'nervous'
    @@cats << self
  end

  def self.all
    @@cats
  end


end