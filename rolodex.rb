require './contact'

class Rolodex
  def initialize
    @contacts = []
  end

  def add_new_contact(first_name,last_name,email,notes)
    @contacts << Contact.new(first_name,last_name,email,notes)
  end

  def modify_existing_contact 
  end

  def delete_existing_contact 
  end

  def display_all 
    puts "Displaying all contacts:"
    @contacts.each do |contact|
      puts contact.to_s
    end
  end

  def display_contact 
  end

  def display_attribute    
  end
end