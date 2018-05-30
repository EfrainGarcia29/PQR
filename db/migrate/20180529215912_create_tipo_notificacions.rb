class CreateTipoNotificacions < ActiveRecord::Migration[5.2]
  def change
    create_table :tipo_notificacions do |t|
      t.string :nombre
      t.string :descripcion
      t.string :comentario
      t.references :notificacion, foreign_key: true

      t.timestamps
    end
  end
end
