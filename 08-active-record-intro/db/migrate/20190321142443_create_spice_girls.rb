class CreateSpiceGirls < ActiveRecord::Migration[5.2]
  def change
    create_table :spice_girls do |t|
      t.string :name
      t.integer :spicyness
<<<<<<< HEAD
      t.datetime :bith_date
=======
      t.datetime :birth_date
>>>>>>> d197237f9fbf6154a810d7e9272869cc0d9a460e
      t.timestamps
    end
  end
end
