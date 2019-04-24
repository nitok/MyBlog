class CreateSakes < ActiveRecord::Migration[5.0]
  def change
    create_table :sakes do |t|
      t.string :prefecture
      t.string :brand
      t.string :item

      t.timestamps
    end
  end
end
