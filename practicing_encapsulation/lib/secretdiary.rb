class SecretDiary

  def initialize
    @lock = true
    @entries = []
  end

  def add_entry
    raise #put error in here and do rspec first
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
