class RemoveUselessColumns < ActiveRecord::Migration[5.0]
  def change
  	remove_column :todo_items, :created_at
    remove_column :todo_items, :updated_at
  end
end
