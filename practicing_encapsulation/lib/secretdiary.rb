require_relative 'locked_error'

class SecretDiary

  def initialize
    @lock = true
    @entries = []
  end

  def add_entry
    raise LockedError, "it's locked" if @lock

    puts "What is your entry?"
    @entries << gets.chomp
  end

  def get_entries
  end

  def lock

  end

  def unlock
  end

end
