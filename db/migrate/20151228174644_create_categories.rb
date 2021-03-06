class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.integer :position
      t.timestamps null: false
    end

    add_column :topics, :category_id, :integer
    add_index :topics, :category_id
  end
end
