class CreateUserWantedBooks < ActiveRecord::Migration
  def change
    create_table :user_wanted_books do |t|
      t.references :user_id, index: true
      t.references :wanted_book_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_wanted_books, :user_ids
    add_foreign_key :user_wanted_books, :wanted_book_ids
  end
end
