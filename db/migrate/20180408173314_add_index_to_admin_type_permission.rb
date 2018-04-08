class AddIndexToAdminTypePermission < ActiveRecord::Migration[5.0]
  def change
    add_index :admin_type_permissions, [:admin_type_id, :component_id], unique: true
  end
end
