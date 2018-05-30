class AddNotificacionIdToUsuariosHasNotificacion < ActiveRecord::Migration[5.2]
  def change
    add_reference :usuarios_has_notificacions, :notificacion, foreign_key: true
  end
end
