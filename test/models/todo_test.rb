require 'test_helper'

class TodoTest < ActiveSupport::TestCase

  test "should not save a todo without a name" do
    todo = Todo.new(name: "", description: "test")
    assert_not todo.save, "Saved the todo without a name"
  end

  test "should not save a todo without a description" do
    todo = Todo.new(name: "test", description: "")
    assert_not todo.save, "Saved the todo without a description"
  end

  test "todo name should not be too long" do
    todo = Todo.new(name: "a" * 51, description: "test")
    assert_not todo.save, "Saved the todo name too long"
  end

  test "todo name should not be too short" do
    todo = Todo.new(name: "a" * 2, description: "test")
    assert_not todo.save, "Saved the todo name too short"
  end

  test "todo description should not be too short" do
    todo = Todo.new(name: "a" * 9, description: "test")
    assert_not todo.save, "Saved the todo description too short"
  end
end
