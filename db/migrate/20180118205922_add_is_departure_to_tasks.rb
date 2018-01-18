class AddIsDepartureToTasks < ActiveRecord::Migration[5.1]
  def change
    add_column :tasks, :isDeparture, :bool
  end
end
