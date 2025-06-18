class CreateEmployes < ActiveRecord::Migration[8.0]
  def change
    create_table :employes do |t|
      t.string :nom
      t.string :specialite
      t.references :garage, null: false, foreign_key: true

      t.timestamps
    end
  end
end
