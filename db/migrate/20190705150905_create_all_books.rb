class CreateAllBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :all_books do |t|
      t.string :title
      t.string :subtitle
      t.string :author
      t.integer :isbn, limit: 8
      t.integer :price
      t.string :image
      t.string :publisher
      t.string :publishedDate
      t.text :description
      t.text :snippet
      t.string :genre
      t.integer :pageCount
      t.string :printType
      t.string :language


      t.timestamps
    end
  end
end
