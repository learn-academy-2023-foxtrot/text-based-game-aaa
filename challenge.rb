# Text-based Game Challenge
puts "WELCOME the Fall maze of horrors!"
def print_ascii_arts 
    File.readlines('maze.txt') do |line|
        line
    end
end
puts print_ascii_arts 

puts "Choose your character!"
puts "Pick a Number:  1. 🎃, 2. 👻, 3. 🧌 "
user_avatar = gets.chomp.to_i

def avatar integer
    if (integer == 1)
        puts "You chose the 🎃, This pumpkin can see in the dark."
    elsif (integer == 2)
        puts "You chose the 👻, This ghost can go through special doors!"
    elsif (integer == 3) 
        puts "You chose the 🧌, This troll can fight monsters!."
    end
end

puts avatar user_avatar

puts "ARE YOU READY TO ENTER THE MAZE? Y/N?"

user_choice_one = gets.chomp

def enter_choice string
    if (string == "Y")
        puts "YES..come in!"
    elsif (string == "N")
        puts "NO..leave, fool!"
    else 
        puts "Please enter either Y or N."
    end
end

enter_choice user_choice_one

def first_door
    File.readlines('door.txt') do |line|
        line
    end
end
puts first_door

puts "You enter the maze and see a long corridor."
puts "To your left, there is a scary looking cave"
def first_door
    File.readlines('door.txt') do |line|
        line
    end
end
puts first_door
puts "that only the pumpkin with the candle can dare to enter"

def first_door
    File.readlines('door.txt') do |line|
        line
    end
end
