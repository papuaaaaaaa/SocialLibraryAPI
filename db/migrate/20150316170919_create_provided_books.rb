class CreateProvidedBooks < ActiveRecord::Migration
  def change
    create_table :provided_books do |t|
      t.references :provided_book_status_id, index: true
      t.references :book_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :provided_books, :provided_book_status_ids
    add_foreign_key :provided_books, :book_ids
  end
end
