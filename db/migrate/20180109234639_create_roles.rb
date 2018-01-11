class CreateRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.string :desc
      t.string :icon
      t.string :url
      t.boolean :mac, default: false

      t.timestamps
    end
  end
end
