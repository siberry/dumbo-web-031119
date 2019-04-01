class Animal < ActiveRecord::Base #the ActiveRecord::Base creates the save method and many more methods

  # def escapes
  #   Escape.where(animal_id: self.id)
  # end

  has_many :escapes #can pass a hash to customize name e.g. : escapes_i_did, class_name: "Escape"
  #must use plural to take advantage of built-in ActiveRecord has_many
  has_many :zoos, { through: :escapes }

  def zoos
    escapes.map do |escape|
      escape.zoo
    end
  end

end
