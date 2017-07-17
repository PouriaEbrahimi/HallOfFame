class RemoveProviderAndUidFromMemer < ActiveRecord::Migration
  def change
    remove_column :memers, :provider, :string
    remove_column :memers, :uid, :string
  end
end
