class TodoList
  def initialize(format_class = TodoFormat)
    @todos = []
    @format = format_class
  end

  def add(description, todo_class = Todo)
    @todos << todo_class.new(description)
  end

  def get(index)
    all[index]
  end

  def to_string
    @format.new.to_string(all)
  end

  def set_complete(index)
    all[index].set_complete
  end

  private

  def all
    @todos
  end
end
