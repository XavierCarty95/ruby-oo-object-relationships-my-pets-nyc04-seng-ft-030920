require 'pry'
class Owner
  # code goes here
  
  attr_reader  :species , :name
  @@all = []
  def initialize(name)
    @name = name 
    @species = "human"
    @@all << self
  
  end 
 
  def say_species 
   "I am a #{@species}."
  end
  
  def self.all 
    @@all 
  end 
  
  def self.count
   Owner.all.count
  end 

  def self.reset_all 
    Owner.all.clear
  end
  
  def cats 
   Cat.all.select { |cats|cats.owner == self }
  end 
  def dogs 
    Dog.all.select { |dogs| dogs.owner == self}
  end
 def buy_cat(cat_name)
   Cat.new(cat_name ,self)
   end

  def buy_dog(dog_name)
   Dog.new(dog_name , self)
     end
     def walk_dogs
      self.dogs.each { |dog| dog.mood = "happy" }
    end
  
    def feed_cats
      self.cats.each { |cat| cat.mood = "happy" }
    end
  
    def sell_pets
      pets = self.dogs + self.cats
  
      pets.each do |pet|
        pet.mood = "nervous"
        pet.owner = nil
      end
    end
  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end 
    
    
end