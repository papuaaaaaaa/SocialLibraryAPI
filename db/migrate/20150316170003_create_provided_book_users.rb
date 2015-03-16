class CreateProvidedBookUsers < ActiveRecord::Migration
  def change
    create_table :provided_book_users do |t|
      t.references :provided_book_id, index: true
      t.references :user_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :provided_book_users, :provided_book_ids
    add_foreign_key :provided_book_users, :user_ids
  end
end
