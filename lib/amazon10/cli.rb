class Amazon10::CLI

  def call
    puts "Welcome to Amazon 10!"
    list_books
  end

  def list_books
    puts "These are the top 10 best selling fiction books this week on Amazon:"
    puts "books 1-10"
    puts "Which would you like to see more information about?"
    bookarray = Amazon10::Book.week
    puts bookarray[0].url
  end

end
