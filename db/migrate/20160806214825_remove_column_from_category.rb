class RemoveColumnFromCategory < ActiveRecord::Migration
  def change
    remove_column :categories, :rest_id, :integer
  end
end
