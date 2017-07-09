class CreateMemers < ActiveRecord::Migration
  def change
    create_table :memers do |t|
      t.string :name
      t.string :gender
      t.integer :memeCount

      t.timestamps null: false
    end
  end
end
