class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.integer :venue_id
      t.integer :pool_table_id
      t.integer :user_id
      t.string :comments

      t.timestamps

    end
  end
end
