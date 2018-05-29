class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :descripcion
      t.datetime :fecha, order: [:day, :month, :year]
      t.time :hora
      t.integer :reasignado

      t.timestamps
    end
  end
end
