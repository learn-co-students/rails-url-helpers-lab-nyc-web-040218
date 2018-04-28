class AddActiveColumn < ActiveRecord::Migration
  def change
    add_column :students, :active, :boolean, :default => 0
  end
end

# add_column(table_name, column_name, type, options = {}) public