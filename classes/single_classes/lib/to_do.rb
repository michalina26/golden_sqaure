class Todo
    def initialize()
        @tasks = []
    end

    def print_todo
        p @tasks
        return @tasks
    end

    def add_task(task)
        @tasks.push(task)    
    end

    def delete_task(task)
        @tasks.delete(task)
    end

end