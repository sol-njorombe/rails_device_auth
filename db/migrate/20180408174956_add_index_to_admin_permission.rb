class AddIndexToAdminPermission < ActiveRecord::Migration[5.0]
  def change
    add_index :admin_permissions, [:admin_id, :component_id], unique: true
  end
end
