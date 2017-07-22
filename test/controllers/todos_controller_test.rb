require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest

  def setup
    @todo = Todo.create(name: "test", description: "test" * 4)
  end

  test "should get new todo" do
    get new_todo_path
    assert_response :success
  end

  test "should get list of todo's" do
    get todos_path
    assert_response :success
  end

  test "should get show a todo" do
    get "/todos/#{@todo.id}", params: {:id => @todo.id}
    assert_response :success
  end

end
