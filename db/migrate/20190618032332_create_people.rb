class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.string :document
      t.date :birth

      t.timestamps
    end
  end
end
