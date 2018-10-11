class Todo

  attr_reader :description, :complete

  def initialize(description)
    @description = description
    @complete = false
  end

  def set_complete
    @complete = true
  end

end
