class CreateGarments < ActiveRecord::Migration
  def change
    create_table :garments do |t|
      t.string :name
      t.string :kind
      t.text :description
      t.decimal :price
      t.integer :sizes, default: 0
      t.boolean :latest, default: false

      t.timestamps null: false
    end
  end
end
