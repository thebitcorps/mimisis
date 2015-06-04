class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :url
      t.string :title
      t.string :message
      t.references :carousel, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
