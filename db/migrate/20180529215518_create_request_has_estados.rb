class CreateRequestHasEstados < ActiveRecord::Migration[5.2]
  def change
    create_table :request_has_estados do |t|
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
