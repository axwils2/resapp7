class RemoveCategoryFromRests < ActiveRecord::Migration
  def change
    remove_column :rests, :category, :string
  end
end
