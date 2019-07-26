class Person < ApplicationRecord
  has_many :animals, foreign_key: :owner_id

  validates_presence_of :name, :birth
end
