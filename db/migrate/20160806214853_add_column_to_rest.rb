class AddColumnToRest < ActiveRecord::Migration
  def change
    add_column :rests, :category_id, :integer
  end
end
