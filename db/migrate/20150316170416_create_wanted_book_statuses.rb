class CreateWantedBookStatuses < ActiveRecord::Migration
  def change
    create_table :wanted_book_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
