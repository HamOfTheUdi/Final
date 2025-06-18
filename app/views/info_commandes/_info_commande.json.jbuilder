json.extract! info_commande, :id, :commande_id, :details, :statut, :raison_retard, :created_at, :updated_at
json.url info_commande_url(info_commande, format: :json)
