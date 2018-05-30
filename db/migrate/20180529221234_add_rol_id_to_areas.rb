class AddRolIdToAreas < ActiveRecord::Migration[5.2]
  def change
    add_reference :areas, :rol, foreign_key: true
  end
end
