class AddCategoryToRest < ActiveRecord::Migration
  def change
    add_column :rests, :category, :string
  end
end
