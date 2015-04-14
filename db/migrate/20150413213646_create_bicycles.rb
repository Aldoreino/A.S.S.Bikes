class CreateBicycles < ActiveRecord::Migration
  def change
    create_table :bicycles do |t|
      t.float :price
      t.string :style
      t.string :color


      t.timestamps null: false
    end
  end
end
