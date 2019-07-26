class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :name
      t.decimal :cost, precision: 10, scale: 2
      t.integer :kind

      t.timestamps
    end
  end
end
