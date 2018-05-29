class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.string :direccion
      t.string :email
      t.integer :cedula
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
