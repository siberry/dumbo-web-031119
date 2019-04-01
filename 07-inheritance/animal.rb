class Animal

  attr_accessor :name

  def initialize(name)
    @name = name
    # if self.class == Cat    --> use `super`
    #   @num_lives = 9
    # end
    p "😻" * 10
  end

  def speak
    # case self.class
    # when Fish
    #   "Blub"
    # when Dog
    #   "Arf"
    # when Cat
    #   "Miau"
    # end
    @thing_this_animal_says # --> have to def initialize for all animals
  end

  def die
    self.speak.upcase
  end

end
