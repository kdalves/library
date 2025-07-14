class CreateBookcases < ActiveRecord::Migration[8.0]
  def change
    create_table :bookcases do |t|
      t.string :name
      t.integer :status
      t.boolean :virtual      
      t.references :books, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
