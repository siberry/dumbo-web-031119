class Dog < Animal

  def initialize(name)
    super #will call the initialize from the class it inherits
    @thing_this_animal_says = "Arf"
  end

end
