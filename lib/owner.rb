class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []
  
  def initialize(species)
    @name = ""
    @species = species 
    @pets = {fishes: [], cats: [], dog:[]}
    @@all << self
  end
  
  def self.all
    @@all 
  end 
  
  def self.count
    @@all.lemgth
  end 
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    puts "I am a #{@species}."
  end
  
  def buy_fish(fish_name)
    new_fish = Fish.new(fish_name)
    @pets[:fishes] << new_fish 
    new_fish
  end 
    
  def buy_dog(dog_name)
    new_dag = Dog.new(dog_name)
    @pets[:dogs] << new_dog  
    new_dog
  end 
  
  def buy_cat(cat_name)
    new_cat = Dog.new(cat_name)
    @pets[:cats] << new_cat  
    new_cat
  end 
  
  def feed_fish(fish) 
    @pets[:fish].find(fish).mood = "excited"
  end
  
  def play_with_car(cat) 
    @pets[:cat].find(cat).mood = "playful"
  end
  
  def walk_dog(dog) 
    @pets[:dog].find(dog).mood = "hungry"
  end
end

