class Product < ApplicationRecord
  has_many :reviews

  validates :name, presence: true

  validates :description, presence: true

  validates :price, presence: true
  # validates :price, numericality: { only_integer: true }  
end
