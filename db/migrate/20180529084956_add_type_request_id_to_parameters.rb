class AddTypeRequestIdToParameters < ActiveRecord::Migration[5.2]
  def change
    add_reference :parameters, :type_request, foreign_key: true
  end
end
