class SecretDiary

  def initialize
    @lock = true
    @entries = []
  end

  def add_entry
    lock_status = catch(:locked) do
      puts "What is your entry?"
      @entries << gets.chomp
      throw :locked if @lock
    end
  end

  def get_entries
  end



  def lock
  end

  def unlock
  end

end
