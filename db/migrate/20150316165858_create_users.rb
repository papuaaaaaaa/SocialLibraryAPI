class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.String :first_name
      t.string :last_name
      t.integer :contribution

      t.timestamps null: false
    end
  end
end
