class TodoItem < ApplicationRecord
  belongs_to :todo_list

  def completed?
  	completed == true
  end
end
