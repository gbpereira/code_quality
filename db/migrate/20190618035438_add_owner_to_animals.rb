class AddOwnerToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_reference :animals, :owner, foreign_key: { to_table: :people }
  end
end
