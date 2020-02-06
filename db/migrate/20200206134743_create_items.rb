class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.text :url, null: false, index: true
      t.string :title
      t.string :description
      t.text :image_url
      t.references :user, index: true
      t.timestamps
    end
  end
end
