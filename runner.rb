class Runner

  # def initialize

  # end

  def menu
    done = false
    while !done
      puts "CRM App Menu"
      puts "1. Add"
      puts "2. Modify"
      puts "3. Display All"
      puts "4. Display Contact"
      puts "5. Display Attribute"
      puts "6. Delete"
      puts "0. Exit"

      print "Enter your choice: "
      menu_input = gets.chomp
      case menu_input
      when "1"
        puts "Do Something"
      when "2"
        puts "Do Something"
      when "3"
        puts "Do Something"
      when "4"
        puts "Do Something"
      when "5"
        puts "Do Something"
      when "6"
        puts "Do Something"
      when "0"
        puts "Do Something"
        done = true
      else
        puts "Invalid input"
      end
    end
  end

  def run
    menu
  end

end

runner = Runner.new
runner.run