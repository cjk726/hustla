class AddBookmarkCountToPoolTables < ActiveRecord::Migration[5.0]
  def change
    add_column :pool_tables, :bookmarks_count, :integer
  end
end
