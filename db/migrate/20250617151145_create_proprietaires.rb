class CreateProprietaires < ActiveRecord::Migration[8.0]
  def change
    create_table :proprietaires do |t|
      t.string :nom
      t.string :email
      t.string :telephone
      t.references :voiture, null: false, foreign_key: true

      t.timestamps
    end
  end
end
