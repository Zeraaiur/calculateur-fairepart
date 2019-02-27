class Produit < ApplicationRecord
  has_many :prices, dependent: :delete_all
end
