class RenameDepartureItemsToTasks < ActiveRecord::Migration[5.1]
  def change
    rename_table :departure_items, :tasks
  end
end
