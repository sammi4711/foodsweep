class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.string :item
      t.integer :amount

      t.timestamps
    end
  end
end
