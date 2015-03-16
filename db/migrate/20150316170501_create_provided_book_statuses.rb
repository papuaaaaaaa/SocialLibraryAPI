class CreateProvidedBookStatuses < ActiveRecord::Migration
  def change
    create_table :provided_book_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
