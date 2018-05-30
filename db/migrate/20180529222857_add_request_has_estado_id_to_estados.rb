class AddRequestHasEstadoIdToEstados < ActiveRecord::Migration[5.2]
  def change
    add_reference :estados, :request_has_estado, foreign_key: true
  end
end
