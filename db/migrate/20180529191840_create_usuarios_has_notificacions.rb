class CreateUsuariosHasNotificacions < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios_has_notificacions do |t|
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
