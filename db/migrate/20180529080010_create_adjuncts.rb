class CreateAdjuncts < ActiveRecord::Migration[5.2]
  def change
    create_table :adjuncts do |t|
      t.string :nombre
      t.string :descripcion
      t.string :file
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
