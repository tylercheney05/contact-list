# Basic Objectives

# Build a contact list
# Create a menu that allows a user to select 1) Create a contact 2) View All Contacts 3) Exit
# The menu should loop until the user exits
# Bonus Objectives

# Delete a contact
# Edit a contact
# If your WPM is below 35 do a lot more www.typing.io exercises

# Create methods

# Change to an array of hashes

def menu
  puts "\n-----------------------\n"

  puts "What would you like to do?
    1) Create a contact
    2) View all contacts
    3) Delete a contact
    4) Exit"
end

def add_contact(contact_list)
  puts "What name would you like to add to your contact list?"
  name_input = gets.chomp.to_s.downcase

  puts "What is their email?"
  email_input = gets.chomp.to_s.downcase

  puts "What is their phone number?"
  phone_input = gets.chomp.to_s.downcase

  contact_list << {key: @contact_list.length() + 1, name: name_input, email: email_input, phone: phone_input}
end

def view_contact_list(contact_list)
  contact_list.each { |contact| puts "#{contact[:key]}) -- #{contact[:name]} -- email: #{contact[:email]} phone: #{contact[:phone]}"}
end

def delete_contact(contact_list)
  view_contact_list(contact_list)
  puts "Which contact would you like to delete?"
  selection = gets.chomp.to_i
  contact_list.delete_at(selection - 1)
end

# Begin code

@contact_list = [
  {key: 1, name: "tyler", email: "tyler@gmail.com", phone: "123-456-7890"},
  {key: 2, name: "lucia", email: "lucia@gmail.com", phone: "000-000-0000"},
  {key: 3, name: "matt", email: "matt@gmail.com", phone: "111-111-1111"}
]

option = 1
until option == 5
  menu
  option = gets.chomp.to_i

  case option
  when 1
    add_contact(@contact_list)
  when 2
    view_contact_list(@contact_list)
  when 3
    delete_contact(@contact_list)
  when 4
    exit
  else
    puts "That's not an option: Try again"
  end
end
