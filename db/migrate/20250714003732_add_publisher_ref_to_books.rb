class AddPublisherRefToBooks < ActiveRecord::Migration[8.0]
  def change
    add_reference :books, :publisher, null: false, foreign_key: true
  end
end
