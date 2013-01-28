class CreateVariants < ActiveRecord::Migration
  def change
    create_table :variants do |t|
      t.string :color
      t.string :size
      t.string :nationality
      t.integer :image
      t.references :product

      t.timestamps
    end
    add_index :variants, :product_id
  end
end
