class NewForeignKeySetup < ActiveRecord::Migration[5.0]
  def change
    remove_foreign_key :todo_items, :todo_lists

    # add the new foreign_key
    add_foreign_key :todo_items, :todo_lists, on_delete: :cascade
  end
end
