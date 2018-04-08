class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.string :name, :null => false
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
