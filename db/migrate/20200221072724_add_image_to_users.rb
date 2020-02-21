class AddImageToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :image_url, :string
    add_column :users, :link, :string
  end
end
