class AddSeguimientoIdToTiposSeguimientos < ActiveRecord::Migration[5.2]
  def change
    add_reference :tipos_seguimientos, :seguimiento, foreign_key: true
  end
end
