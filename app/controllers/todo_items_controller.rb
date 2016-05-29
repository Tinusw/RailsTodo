class TodoItemsController < ApplicationController
	before action :set_todo_list

	def create
		@todo_item = @todo_list.todo_items.create(todo_item_params)

		redirect_to @todo_list
	end

	private 

	def set_todo_list
		@todo_list = todo_list.find(params[:todo_list_id])
	end

	def todo_item_params
		params[:todo_item].permit(:content, :desc)
	end
end
