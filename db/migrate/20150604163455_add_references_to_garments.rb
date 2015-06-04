class AddReferencesToGarments < ActiveRecord::Migration
  def change
    add_reference :garments, :collection, index: true, foreign_key: true
  end
end
