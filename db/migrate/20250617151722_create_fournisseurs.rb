class CreateFournisseurs < ActiveRecord::Migration[8.0]
  def change
    create_table :fournisseurs do |t|
      t.string :nom
      t.string :adresse
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
