class CreateCommunityUsers < ActiveRecord::Migration
  def change
    create_table :community_users do |t|
      t.references :community_id, index: true
      t.references :user_id, index: true

      t.timestamps null: false
    end
    add_foreign_key :community_users, :community_ids
    add_foreign_key :community_users, :user_ids
  end
end
