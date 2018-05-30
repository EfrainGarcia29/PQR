class CreateRols < ActiveRecord::Migration[5.2]
  def change
    create_table :rols do |t|
      t.string :nombre
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
