class CreateAreas < ActiveRecord::Migration[5.2]
  def change
    create_table :areas do |t|
      t.string :nombre
      t.integer :tel

      t.timestamps
    end
  end
end
