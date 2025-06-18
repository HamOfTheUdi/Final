json.extract! fournisseur, :id, :nom, :adresse, :telephone, :email, :created_at, :updated_at
json.url fournisseur_url(fournisseur, format: :json)
