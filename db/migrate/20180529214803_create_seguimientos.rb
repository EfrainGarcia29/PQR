class CreateSeguimientos < ActiveRecord::Migration[5.2]
  def change
    create_table :seguimientos do |t|
      t.string :descripcion
      t.datetime :fecha
      t.time :hora

      t.timestamps
    end
  end
end
