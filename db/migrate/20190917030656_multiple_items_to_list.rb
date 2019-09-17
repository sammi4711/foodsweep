class MultipleItemsToList < ActiveRecord::Migration[5.2]
  def change
    drop_table :lists
    create_table :lists do |t|
      t.string :title
      t.string :items

      t.timestamps
    end
  end
end
