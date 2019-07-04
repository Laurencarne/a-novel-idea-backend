class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :isbn, limit: 8
      t.integer :price
      t.string :image_small
      t.string :publisher
      t.string :description
      t.string :snippet
      t.string :genre
      t.string :published_date
      t.integer :page_count

      t.timestamps
    end
  end
end
