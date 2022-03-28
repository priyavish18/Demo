class CreateMenus < ActiveRecord::Migration[7.0]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :last_name
      t.text :description
      t.integer :prize

      t.timestamps
    end
  end
end
