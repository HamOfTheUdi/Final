class CreateGarages < ActiveRecord::Migration[8.0]
  def change
    create_table :garages do |t|
      t.string :nom
      t.string :adresse
      t.integer :capacite

      t.timestamps
    end
  end
end
