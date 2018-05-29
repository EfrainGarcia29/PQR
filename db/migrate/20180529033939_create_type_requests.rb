class CreateTypeRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :type_requests do |t|
      t.string :nombre
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
