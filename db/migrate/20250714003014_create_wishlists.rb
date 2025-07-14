class CreateWishlists < ActiveRecord::Migration[8.0]
  def change
    create_table :wishlists do |t|
      t.string :name
      t.integer :status
      t.references :books, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
