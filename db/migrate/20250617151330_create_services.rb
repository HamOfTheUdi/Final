class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.date :date
      t.string :type_service
      t.decimal :cout
      t.references :voiture, null: false, foreign_key: true
      t.references :employe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
