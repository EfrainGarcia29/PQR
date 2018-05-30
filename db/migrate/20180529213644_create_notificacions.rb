class CreateNotificacions < ActiveRecord::Migration[5.2]
  def change
    create_table :notificacions do |t|
      t.string :mensaje
      t.datetime :fecha

      t.timestamps
    end
  end
end
