## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

_Include the name of the method, its parameters, return value, and side effects._

``` ruby
class Todo
  initialize

  end

  def print_todo
  #prints todo list
  end

  def add_task(task)
  #adds to todo list
  end

  def delete_task(task)
  #deletes task when complete
  end


# * 
# * 
```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

``` ruby
# 1 

todo = Todo.new

# => []

# 2

print_todo

# => prints out the todo list

# 3

add_task

todo = Todo.new
todo.add("Cook dinner")



# => 

# 4

delete_task

# => 2

# 5

# => 2

```
_Encode each example as a test. You can add to the above list as you go._ 

## 4. Implement the Behaviour 

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._