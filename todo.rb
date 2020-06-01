class Todo
  def initialize(string)
    @thing = string.to_s
  end

  def text
    return @thing
  end
end

class TodoList
  def initialize
    @list = []
  end

  def add(thing)
    @list.push(thing)
  end

  def print
    @list.each do |item|
      puts "* " + item
    end
  end

end
