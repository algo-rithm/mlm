class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :phone
      t.string :contact
      t.string :email
      t.string :street_one
      t.string :street_two
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
