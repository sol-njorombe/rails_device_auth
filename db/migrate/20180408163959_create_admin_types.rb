class CreateAdminTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :admin_types do |t|
      t.string :name, :null => false
      t.string :description
      t.timestamps
    end
  end
end
