class CreateWantedBooks < ActiveRecord::Migration
  def change
    create_table :wanted_books do |t|
      t.references :wanted_book_status_id, index: true
      t.references :book_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :wanted_books, :wanted_book_status_ids
    add_foreign_key :wanted_books, :book_ids
  end
end
