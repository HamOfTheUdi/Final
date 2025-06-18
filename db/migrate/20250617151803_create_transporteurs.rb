class CreateTransporteurs < ActiveRecord::Migration[8.0]
  def change
    create_table :transporteurs do |t|
      t.string :nom
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
