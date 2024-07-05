class CreateMenus < ActiveRecord::Migration[7.1]
  def change
    create_table :menus do |t|
      t.string :food_name
      t.string :origin
      t.text :ingredients

      t.timestamps
    end
  end
end
