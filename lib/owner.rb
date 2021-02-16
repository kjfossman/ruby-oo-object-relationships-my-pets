require 'pry'

class Owner
  @@all = []

  attr_accessor 
  attr_reader :name, :species
 
  def initialize(name)
    @name = name
    @species = 'human'  
    @@all << self
  end

  def say_species
    return "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    Owner.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def cats
    my_cats = []
    Cat.all.each do |cat|
      if cat.owner == self
        my_cats << cat
      end
    end
    my_cats
  end 

  def dogs
    my_dogs = []
    Dog.all.each do |dog|
      if dog.owner == self
        my_dogs << dog
      end
    end
    my_dogs
  end

  def buy_cat(name)
    new_cat = Cat.new(name, self)
  end

  def buy_dog(name)
    new_dog = Dog.new(name, self)
  end

  def walk_dogs
    Dog.all.each do |dog|
      dog.mood = 'happy'
    end
  end

  def feed_cats
    Cat.all.each do |cat|
      cat.mood = 'happy'
    end
  end

  def sell_pets
    Dog.all.each do |d|
      d.mood = 'nervous'
      d.owner = nil
    end
    Cat.all.each do |c|
      c.mood = 'nervous'
      c.owner = nil
    end
  end

  def list_pets
    return "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
    #binding.pry
  end


end