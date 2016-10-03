# Inventory Assignment

#Hash to Store Candy Bar and Quantity Amounts
candy_hash = {baby_ruth: 11,
               pay_day: 20,
               twix: 33,
               kit_kat: 24,
               snickers: 38,
               milky_way: 17,
               hershey: 7
  }

#Add Items Method
def add_inventory(candy_hash)
 puts "New Candy Bar to Add:"
 add_item = gets.chomp.to_sym
 candy_hash[add_item]

 puts "Quantity Amount:"
 quantity = gets.chomp.to_i
 candy_hash[add_item] = quantity

 puts
 puts "#{add_item} has been added to the Inventory with a quantity of #{quantity}."
 puts
 puts "Current Inventory: #{candy_hash}"  # prints hash to screen with changes
 puts
 return candy_hash
end

#Delete Item Method
def remove_inventory (candy_hash)
  puts "Candy Bar to Delete:"
  remove_item = gets.chomp.to_sym

    if candy_hash[remove_item.to_sym] .nil?
      puts
      puts "That is no a candy bar in the Inventory!"
      puts
      puts "Current Inventory: #{candy_hash}"
      puts
    else
      candy_hash.delete(remove_item)    # delete the key that user types in
    end
  puts
  puts "Current Inventory: #{candy_hash}"  # prints hash to screen with changes
  puts
  return candy_hash
end

#Update Items Method
def update_inventory(candy_hash)
  puts "Candy Bar to Update:"
  update_item = gets.chomp.to_sym
    if candy_hash[update_item.to_sym] .nil?
      puts
      puts "That is not in the Inventory!"
      puts
      puts "Current Inventory: #{candy_hash}"
      puts
    else
      puts "What quantity would you like to change it to?"
        update_quantity = gets.chomp.to_i
        candy_hash[update_item] = update_quantity
        puts
        puts "Current Inventory: #{candy_hash}"
        puts
        return candy_hash
    end
end

#Prints Inventory Item List
puts
puts "Current Items in Inventory:"  # This is the first thing user see printed on screen when program starts
puts candy_hash
puts

#Start Overall Program Loop Here
stop = 'no'

while stop == 'no'

#Prompt User to Make Chanes to Inventory Items
puts "Would you like to make changes to the inventory?"
puts "Enter: 'Add' (add item to inventory), 'Update'(Update an item already in inventory), 'Delete'(delete an item), or 'No' to End Program"
answer = gets.chomp.capitalize

  if answer == 'Add'
    candy_hash = add_inventory(candy_hash)
    stop = 'no'
  elsif answer == 'Update'
    candy_hash = update_inventory(candy_hash)
    stop = 'no'
  elsif answer == 'Delete'
    candy_hash = remove_inventory(candy_hash)
    stop = 'no'
  elsif answer == 'No'
    stop = 'yes'
    puts "The program has ended!"
    puts
  end

end  # end of while Loop

puts "Current Inventory: #{candy_hash}"  # Final output of inventory after while loop ends and all changes have been made
puts
