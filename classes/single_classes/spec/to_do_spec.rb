require "to_do"

RSpec.describe Todo do
    it "adds to the todo list and prints it" do
      todo = Todo.new
      todo.add_task("Cook dinner")
      expect(todo.print_todo).to eq ["Cook dinner"]
      todo.add_task("Do yoga")
      expect(todo.print_todo).to eq ["Cook dinner", "Do yoga"]
      todo.add_task("Feed cat")
      expect(todo.print_todo).to eq ["Cook dinner", "Do yoga", "Feed cat"]

    end
    
    it "deletes a task that has been added on previously" do
      todo = Todo.new
      todo.add_task("Cook dinner")
      todo.add_task("Do yoga")
      todo.add_task("Feed cat")

      todo.delete_task("Do yoga")
      expect(todo.print_todo).to eq ["Cook dinner", "Feed cat"]
    end
end