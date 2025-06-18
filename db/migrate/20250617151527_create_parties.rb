class CreateParties < ActiveRecord::Migration[8.0]
  def change
    create_table :parties do |t|
      t.string :nom
      t.decimal :prix
      t.integer :stock
      t.references :voiture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
