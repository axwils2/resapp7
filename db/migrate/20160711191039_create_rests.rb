class CreateRests < ActiveRecord::Migration
  def change
    create_table :rests do |t|
      t.string :name
      t.string :address
      t.references :user, index: true

      t.timestamps null: false
    end
  end
end
