require_relative "contact"

class Rolodex

  def initialize
    @contacts = []
  end

  def add_new_contact(first_name,last_name,email,notes)
    @contacts << Contact.new(first_name,last_name,email,notes)
  end

  def modify_existing_contact(id, attribute_type, attribute_value) 
    # if attribute_type == "1"
    # elsif
  end

  def delete_existing_contact(id)
    @contacts.delete_if {|contact| contact.id == id}
  end

  def display_all
    puts "Displaying all contacts:"
    @contacts.each do |contact|
      puts contact.to_s
    end
  end

  def display_contact(id)
    @contacts.each do |contact|
      puts contact.to_s if contact.id == id.to_i
    end
  end

  def display_attribute(attribute_type)
  
    # @contacts.each do |contact|
    #   case attribute_type
    #   when 1

    #   when 2

    #   when 3

    #   when 4

    #   when 5
    #   else
    # end
  end
end