class AddPoolTableCountToVenues < ActiveRecord::Migration[5.0]
  def change
    add_column :venues, :pool_tables_count, :integer
  end
end
