require 'test_helper'

class CreateTodosTest < ActionDispatch::IntegrationTest

  test "should get new form and create a todo" do
    get new_todo_path
    assert_template 'todo/new'
  end

end
