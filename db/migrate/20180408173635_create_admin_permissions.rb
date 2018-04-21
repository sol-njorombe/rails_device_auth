class CreateAdminPermissions < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_permissions do |t|
      t.references :admin, foreign_key: true
      t.references :component, foreign_key: true
      t.boolean :create, :default => false
      t.boolean :update, :default => false
      t.boolean :delete, :default => false
      t.references :updated_by, index: true, foreign_key: { to_table: :users }
      t.timestamps
    end
  end
end
