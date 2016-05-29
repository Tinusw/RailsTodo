class AtCompletedCheckToTodoItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :todo_items, :completed, :boolean, :default => false
  end
end
