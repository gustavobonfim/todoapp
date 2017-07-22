class TodosController < ApplicationController

  def new
    @todo = Todo.new
  end

  def index

  end

  def show

  end

  def create
    @todo = Todo.new(params[:id])
    if @todo.save
    else
      redirect_to new_todo_path
    end

  end
end
