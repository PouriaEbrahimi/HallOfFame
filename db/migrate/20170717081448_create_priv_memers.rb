class CreatePrivMemers < ActiveRecord::Migration
  def change
    create_table :priv_memers do |t|
      t.string :name
      t.string :uid

      t.timestamps null: false
    end
  end
end
