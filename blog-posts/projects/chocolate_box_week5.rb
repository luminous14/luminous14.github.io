# User stories
# I want to make a class that mimics a box of assorted chocolates. There are 12
# chocolates in the box: lemon truffle, dark nougat, caramel,
# maple walnut, marzipan, strawberry Cream, divinity, raspberry truffle, dark peanut,
# dark coconut, dark almond, milk buttercream. I want to have a method that lets me
# ask for a chocolate, but returns it at random. Like Forrest Gump, the user never knows
# what he / she is going to get. After that chocolate has been taken from the box, it
# is noted as no longer in the box.

# Pseudocode
# create Class BoxOfChocolates
  # it's input is an array of chocolates.
  # create an initialize method with an instance variable called choco_list, have it
  # be an array.
  # create a method called rand_choco that takes no parameters
  # Have it check the available chocolates in choco_list, and then return one of them
  # at random. Update the list to reflect the missing chocolate.
  # If there are no chocolates left in the box, tell the user the box is empty, and
  # to go buy more!
  # Create a method called choco_left to check how many chocolates are left in the box.
  # Have it return the lengthof the array.

# Initial code

class BoxOfChocolates

  def initialize(chocolate_list)
    @choco_list = chocolate_list
  end

  def rand_choco
    if @choco_list.length > 0
      puts "You grab a chocolate and take a bite."
      puts "Mmmm...#{@choco_list.delete_at(rand(@choco_list.length))}..."
    else
      puts "There are no more chocolates. Go buy another box!"
    end
  end

  def choco_left
    puts "There are #{@choco_list.length} chocolate(s) left in the box."
  end

end

# Driver Test Code
chocolate_list = ["lemon truffle","dark nougat","caramel","maple walnut","marzipan","strawberry cream","divinity","raspberry truffle","dark peanut","dark coconut","dark almond","milk buttercream"]
chocolate_list = ["lemon truffle","dark nougat","caramel","maple walnut"]
box = BoxOfChocolates.new(chocolate_list)
puts box.rand_choco
puts box.choco_left