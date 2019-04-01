class Animal

  attr_accessor :name

  def initialize(name)
    @name = name
<<<<<<< HEAD
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
=======
    # if self.class == Cat
    #   @num_lives = 9
    # end
    # p "🍩" * 100
  end

  def potty
    "💩"
  end

  def die
    self.speak.upcase
  end

  def speak
    @thing_this_animal_says
    # case self.class.name
    # when "Fish"
    #   "Blub"
    # when "Dog"
    #   "Arf"
    # when "Cat"
    #   "Miau"
    # end
  end

end


>>>>>>> d197237f9fbf6154a810d7e9272869cc0d9a460e
