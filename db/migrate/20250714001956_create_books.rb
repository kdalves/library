class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :summary
      t.boolean :virtual

      t.timestamps
    end
  end
end
