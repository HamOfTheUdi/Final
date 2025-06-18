class CreateInfoCommandes < ActiveRecord::Migration[8.0]
  def change
    create_table :info_commandes do |t|
      t.references :commande, null: false, foreign_key: true
      t.text :details
      t.string :statut
      t.string :raison_retard

      t.timestamps
    end
  end
end
