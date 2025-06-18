class CreateCommandes < ActiveRecord::Migration[8.0]
  def change
    create_table :commandes do |t|
      t.references :partie, null: false, foreign_key: true
      t.date :date
      t.references :fournisseur, null: false, foreign_key: true
      t.references :transporteur, null: false, foreign_key: true

      t.timestamps
    end
  end
end
