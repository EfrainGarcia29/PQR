class CreatePermisoHasRols < ActiveRecord::Migration[5.2]
  def change
    create_table :permiso_has_rols do |t|

      t.timestamps
    end
  end
end
