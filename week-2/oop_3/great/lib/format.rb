class TodoFormat

  def to_string(todos)
    todos.each_with_index.map { |todo, index|
      todo_to_string(todo, index + 1)
    }.join("\n")
  end

private
  def todo_to_string(todo, index)
    description = todo.description
    complete = todo_completion_to_string(todo)
    "#{index}. #{description} #{complete}"
  end

  def todo_completion_to_string(todo)
    todo.complete ? "complete" : "not complete"
  end

end
