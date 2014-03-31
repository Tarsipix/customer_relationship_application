class Contact
  @@counter = 1000

  attr_accessor :id, :first_name, :last_name, :email, :note
  def initialize(first_name,last_name,email,note)
    @@counter += 1
    @id = @@counter
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

  def to_s
    puts "ID: #{@id}"
    puts "First name: #{@first_name}"
    puts "Last name: #{@last_name}"
    puts "Email: #{@email}"
    puts "Note: #{@note}"
  end
end