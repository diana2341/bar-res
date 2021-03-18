class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :task_name 
      t.string :due_date
      t.integer :user_id
      t.timestamps
    end
  end
end
