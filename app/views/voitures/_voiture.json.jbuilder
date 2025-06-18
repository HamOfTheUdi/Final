json.extract! voiture, :id, :numero_immatriculation, :couleur, :statut, :anee, :marque, :garage_id, :created_at, :updated_at
json.url voiture_url(voiture, format: :json)
