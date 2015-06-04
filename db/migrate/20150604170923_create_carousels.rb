class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|


      t.timestamps null: false
    end
  end
end
