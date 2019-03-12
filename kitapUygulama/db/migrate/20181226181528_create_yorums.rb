class CreateYorums < ActiveRecord::Migration[5.2]
  def change
    create_table :yorums do |t|
      t.string :isim
      t.text :mesaj
      t.references :kitap, foreign_key: true

      t.timestamps
    end
  end
end
