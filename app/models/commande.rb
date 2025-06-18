class Commande < ApplicationRecord
  belongs_to :partie
  belongs_to :fournisseur
  belongs_to :transporteur
end
