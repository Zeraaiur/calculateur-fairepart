class CreateEnveloppes < ActiveRecord::Migration[5.2]
  def change
    create_table :enveloppes do |t|
      t.float :prixU
      t.string :format

      t.timestamps
    end
  end
end
