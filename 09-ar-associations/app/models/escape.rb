class Escape < ActiveRecord::Base

  # def animal
  #   Animal.find_by(self.animal_id)
  # end
  #
  # def zoo
  #   Zoo.find(self.zoo_id)
  # end

  belongs_to :animal
  belongs_to :zoo

end
