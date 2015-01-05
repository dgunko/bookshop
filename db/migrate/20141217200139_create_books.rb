class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.text :title
      t.text :description
      t.integer :in_stok
      t.decimal  :price
      t.belongs_to :category
      t.belongs_to :author

      t.timestamps
    end
  end
end
