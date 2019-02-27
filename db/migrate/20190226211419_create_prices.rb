class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.float :prixU
      t.integer :nombre
      t.references :produit, foreign_key: true

      t.timestamps
    end
  end
end
