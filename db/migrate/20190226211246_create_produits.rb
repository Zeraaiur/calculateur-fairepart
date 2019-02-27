class CreateProduits < ActiveRecord::Migration[5.2]
  def change
    create_table :produits do |t|
      t.string :typeproduit
      t.string :slug
      t.string :nom
      t.boolean :pliant
      t.boolean :couleur
      t.boolean :verso
      t.string :format

      t.timestamps
    end
  end
end
