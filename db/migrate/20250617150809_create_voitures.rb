class CreateVoitures < ActiveRecord::Migration[8.0]
  def change
    create_table :voitures do |t|
      t.string :numero_immatriculation
      t.string :couleur
      t.string :statut
      t.integer :anee
      t.string :marque
      t.references :garage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
