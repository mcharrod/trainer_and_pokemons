class Trainer < ApplicationRecord
  has_many :pokemons

  validates_presence_of :name
  validates_presence_of :age

  validates_uniqueness_of :name
end
