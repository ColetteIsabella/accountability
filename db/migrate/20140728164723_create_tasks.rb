class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :assignment
      t.integer :points

      t.timestamps
    end
  end
end
