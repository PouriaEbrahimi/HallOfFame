class AddProviderAndUidToMemer < ActiveRecord::Migration
  def change
    add_column :memers, :provider, :string
    add_column :memers, :uid, :string
  end
end
