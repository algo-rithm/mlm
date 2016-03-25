class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :project_id
      t.string :name
      t.string :sku
      t.integer :fabric_id
      t.boolean :prerequisites
      t.boolean :died
      t.boolean :finished
      t.boolean :sewn
      t.boolean :packaged
      t.decimal :asking_price
      t.decimal :sold_price
      t.string :location

      t.timestamps
    end
  end
end
