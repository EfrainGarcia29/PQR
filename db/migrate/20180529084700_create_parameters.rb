class CreateParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :parameters do |t|
      t.string :nombre
      t.string :descripcion
      t.time :tiemporespuesta
      t.string :medio

      t.timestamps
    end
  end
end
