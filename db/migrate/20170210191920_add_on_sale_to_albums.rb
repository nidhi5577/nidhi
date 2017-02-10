class AddOnSaleToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :on_sale, :string
  end
end
