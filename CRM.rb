class Runner

  # def initialize

  # end



  def print_main_menu
    puts "CRM App list of available commands"
    puts "[1] Add a new contact"
    puts "[2] modify"
    puts "[3] delete"
    puts "[4] display all"
    puts "[5] display contact"
    puts "[6] display attribute"
    puts "[0] exit"
    puts "[00] clear"
    print "Enter a number: "
  end

  def call_option(user_selected)
    done = false
    case user_selected
    when "1", "add"
      puts "Do Something"
    when "2", "modify"
      puts "Do Something"
    when "3", "delete"
      puts "Do Something"
    when "4", "display all"
      puts "Do Something"
    when "5", "display contract"
      puts "Do Something"
    when "6", "display attribute"
      puts "Do Something"
    when "0", "exit"
      puts "Goodbye."
      done = true
    when "00", "clear"
      puts "\e[H\e[2J"
    else
      puts "Invalid input"
    end
    return done
  end

  def main_menu
    done = false
    while !done      
      print_main_menu
      user_selected = gets.chomp
      done = call_option(user_selected)
    end
  end

  def run
    main_menu
  end

end

runner = Runner.new
runner.run