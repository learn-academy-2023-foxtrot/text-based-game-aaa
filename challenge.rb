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

user_choice_one = gets.chomp.upcase

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

puts "You enter the maze and see a long corridor."
def door_choice string
    if string == 1
        puts "To your left, there is a scary looking door"
        def door_left
            File.readlines('doorleft.txt') do |line|
                line
            end
        end
        puts door_left
        "Since you are the 🎃 you can enter this door"
    elsif string == 2
        puts "To your right, there is a door that looks impenetrable for everyone... except a ghost "
        def door_right
            File.readlines('doorright.txt') do |line|
                line
            end
        end
        puts door_right
        "Since you are the 👻 you can enter this door"
    elsif string == 3
        puts "In front of you there is a door, you can hear the monster behind it
        "
        def first_door
            File.readlines('door.txt') do |line|
                line
            end
        end
        puts first_door
        "Since you are the 🧌 you can enter this door"
    end
end
puts door_choice user_avatar
puts "type ENTER to open this door"
pumpkin_choice = gets.chomp.upcase
def open_door (string1, string2)
    if string1 == "ENTER" && string2 == 1
        File.readlines('doorthree.txt') do |line|
            line
        end
        puts "you enter a very dark room"
        puts ".
        .
        .
        .
        .
        "
        puts "it looks very scary...."
        puts "        
                
            "
        puts "you see a torch on the wall its decision time"
        puts "which one do you choose, are you using the torch 🔥 or... are you using your Jack-lantern power 🕯️"
        puts "type: torch or power"
        pumpkin_weapon_choice = gets.chomp.upcase
        if pumpkin_weapon_choice == "TORCH"
            puts "you hold the torch"
            File.readlines('torch.txt') do |line|
                line
            end
            puts "🔥BUT OH NO🔥"
            puts "YOU ARE BURNING!"
            puts "better luck next time"
            File.readlines('gameover.txt') do |line|
                line
            end
        elsif pumpkin_weapon_choice == "POWER"
            puts "GOOD CHOICE!!!"
            puts "the room lights up and in the middle of it you see a huge treasure"
            puts "CONGRATS YOU HAVE WON"
            File.readlines('treasure.txt') do |line|
                line
            end
        # here is the end of the pumpkin storyline 
        end
    end
end
puts open_door(pumpkin_choice, user_avatar)


