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
>>>>>>> ef0996dfb1471174b578bd1c774fba202e66d455
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
>>>>>>> ef0996dfb1471174b578bd1c774fba202e66d455
