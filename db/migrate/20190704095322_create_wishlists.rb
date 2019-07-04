class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.references :wish_book, foreign_key: true

      t.timestamps
    end
  end
end
