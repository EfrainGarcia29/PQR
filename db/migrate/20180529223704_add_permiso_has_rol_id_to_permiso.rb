class AddPermisoHasRolIdToPermiso < ActiveRecord::Migration[5.2]
  def change
    add_reference :permisos, :permiso_has_rol, foreign_key: true
  end
end
