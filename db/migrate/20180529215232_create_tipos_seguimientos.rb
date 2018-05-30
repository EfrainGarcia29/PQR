class CreateTiposSeguimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :tipos_seguimientos do |t|
      t.string :nombre
      t.string :comentario

      t.timestamps
    end
  end
end
