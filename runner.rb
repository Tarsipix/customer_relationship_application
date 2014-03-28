require './rolodex'

class Runner
  def initialize(name)
    @name = name
    @rolodex = Rolodex.new
  end

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
      add_new_contact
    when "2", "modify"
      modify_existing_contact
    when "3", "delete"
      delete_existing_contact
    when "4", "display all"
      display_all
    when "5", "display contact"
      display_contact
    when "6", "display attribute"
      display_attribute    
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

  def add_new_contact 
    puts "First name: "
    first_name = gets.chomp
    puts "Last name: "
    last_name = gets.chomp
    puts "Email: "
    email = gets.chomp
    puts "Notes: "
    notes = gets.chomp
    @rolodex.add_new_contact(first_name,last_name,email,notes)
  end

  def modify_existing_contact 
    puts "Enter contact id to modify"
    id = gets.chomp.to_i
    # does contact exist?
    done = false
    while !done
      puts "Which attribute do you want to modify?"
      puts "[1] First name"
      puts "[2] Last name"
      puts "[3] Email"
      puts "[4] Notes"
      puts "[0] Go back to menu"
      attribute_type = gets.chomp
      done = true if attribute_type == "0"
      if !done
        puts "Are you sure you want to modify #{attribute_type}?"
        continue = gets.chomp
        next if continue.to_s.downcase == "n"
        puts "Enter new value: "
        attribute_value = gets.chomp
        @rolodex.modify_existing_contact(id, attribute_type, attribute_value)
      end
    end
  end

  def delete_existing_contact 

  end

  def display_all 
    @rolodex.display_all
  end

  def display_contact 
  end

  def display_attribute    
  end

  def what_is_the_name_of_this_CRM_again
    puts "-------------------"
    puts @name
    puts "-------------------"
  end

  def main_menu
    done = false
    while !done      
      print_main_menu
      user_selected = gets.chomp
      done = call_option(user_selected)
    end
  end

end

a_crm_app = Runner.new("BitmakerLabs CRM App")
a_crm_app.what_is_the_name_of_this_CRM_again
a_crm_app.main_menu
