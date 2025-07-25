class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :message
      t.references :books, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
