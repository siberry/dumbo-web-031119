class Cat < Animal

  attr_reader :num_lives

  def initialize(name)
<<<<<<< HEAD
    @num_lives = 9
    @thing_this_animal_says = "Miau"
    super #will call the initialize from the class it inherits
=======
    super("😻#{ name }")
    @num_lives = 9
    @thing_this_animal_says = "Miau"
>>>>>>> d197237f9fbf6154a810d7e9272869cc0d9a460e
  end

  # def speak
  #   "Miau"
  # end
  def die
    @num_lives -= 1
    super
  end

<<<<<<< HEAD
  def die
    @num_lives -= 1
    super
  end

end
=======
end
>>>>>>> d197237f9fbf6154a810d7e9272869cc0d9a460e
