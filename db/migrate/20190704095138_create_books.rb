class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :isbn
      t.integer :price
      t.string :image_small
      t.string :image_large
      t.string :publisher
      t.string :description
      t.string :genre
      t.string :published_date
      t.integer :page_count
      t.references :book_order, foreign_key: true

      t.timestamps
    end
  end
end
