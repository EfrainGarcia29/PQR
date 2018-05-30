class UsuariosHasNotificacion < ApplicationRecord
  belongs_to :user
  belongs_to :notificacion
end
