class AddTaskImageToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :task_image, :text
  end
end
