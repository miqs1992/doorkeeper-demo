class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :name, null: false, index: true
      t.string :domain, null: false
      t.string :banner_url, null: false
      t.string :logo_url, null: false
      t.timestamps
    end
  end
end
