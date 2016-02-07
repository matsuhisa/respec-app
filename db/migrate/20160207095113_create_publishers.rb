class CreatePublishers < ActiveRecord::Migration
  def change
    create_table :publishers do |t|
      t.string :name
      t.text :description
      t.integer :prefecture_id

      t.timestamps null: false
    end
  end
end
