require 'pry'
class Owner
  @@all = []
  
  attr_accessor :name, :pets
  attr_reader :species
  
  def initialize(species)
    @species = species
    @@all << self
    @pets = {cats: [], dogs: [], fishes: []}
  end
  
  def self.all
    @@all
  end 
  
  def self.count
    @@all.count
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def species
    @species
  end 
  
  def say_species
    "I am a #{@species}."
  end 
  
  def pets
    @pets
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  
  def walk_dogs
    @pets[:dogs].each {|dog| dog.mood = "happy"}
  end 
  
  def play_with_cats
    @pets[:cats].each {|cat| cat.mood = "happy"}
  end 
  
  def feed_fish
    @pets[:fishes].each {|fish| fish.mood = "happy"}
  end 
  
  def sell_pets
    @pets.each do |pets, array|
      array.each {|p| p.mood = "nervous"}
      array.clear
    end 
  end 
  
  def list_pets
<<<<<<< HEAD
    "I have #{@pets[:fishes].count.to_s} fish, " + @pets[:dogs].count.to_s + " dog(s), and " + @pets[:cats].count.to_s + " cat(s)."
=======
    @pets.each do |pets, array| 
      if pets == :fishes
        @fish = array.count.to_s 
      end
      if pets == :dogs
        @dog = array.count.to_s 
      end
      if pets == :cats
        @cat = array.count.to_s 
      end
    end
    "I have #{@fish} fish, " + @dog + " dog(s), and " + @cat + " cat(s)."
>>>>>>> 1298718c0782321d8116117cb2225d97ef0aa1d3
  end 
  
end