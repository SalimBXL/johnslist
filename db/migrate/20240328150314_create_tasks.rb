class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.integer :criticality
      t.date :due_date
      t.integer :status
      t.integer :level
      t.integer :priority

      t.references :referent, null: false
      t.references :folder, null: false

      t.timestamps
    end
  end
end
