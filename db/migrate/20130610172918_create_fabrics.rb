class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :name
      t.text :notes
      t.decimal :length
      t.string :silktype
      t.date :purchase_date
      t.decimal :purchase_price

      t.timestamps
    end
  end
end
