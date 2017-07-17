class AddProviderToPrivMemer < ActiveRecord::Migration
  def change
    add_column :priv_memers, :provider, :string
  end
end
