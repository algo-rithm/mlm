class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.integer :client_id
      t.date :start_date
      t.date :goal_date
      t.text :description

      t.timestamps
    end
  end
end
