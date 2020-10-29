class Weapon < ApplicationRecord
  has_many :categories
  has_many :types
end
