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
        "Since you are the 👻 this is your door!"
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
        end
        # here is the end of the pumpkin storyline 


    elsif string1 == "ENTER" && string2 == 2
        File.readlines('doortwo.txt') do |line|
            line
        end
        puts "The door looks impenetrable - in order to go through you HAVE to solve a riddle..."
        puts "If it walks like a duck, quacks like a duck, then it's a ...?"
        ghost_answer = gets.chomp.upcase 
        if ghost_answer == "DUCK"
             "That's the answer!"
             File.readlines('duck.txt') do |line|
                line
            end
        else 
            "That's incorrect, try again!"
        
        end
        puts "You've entered the room of the ghost...there's a spooky table....with 2 fruits...which one do you want to pick?"
        puts "🍎, 🍍"
        puts "type: apple or pineapple"
        ghost_fruit_choice = gets.chomp.upcase
        if ghost_fruit_choice == "PINEAPPLE"
            puts "OH NO! YOU HAVE BEEN POISONED"
            File.readlines('gameover.txt') do |line|
                line
            end
        elsif ghost_fruit_choice == "APPLE"
            puts "GOOD CHOICE!!!"
            puts "CONGRATS YOU ATE THE RIGHT FRUIT"
            File.readlines('celebration.txt') do |line|
                line
            end
            
        end
    elsif (string1 == "ENTER" && string2 == 3) 
        puts "To open the door, you need to solve this equation"
        #pemdas format
        puts "Every def has a...??"
        answer = gets.chomp.upcase 
        if (answer == "END")
            puts "You have unlocked the door!"
            File.readlines('spider.txt') do |line|
                line
            end
                puts "You find a katanna leaned against the wall"
                puts "Are you up for the challenge to fight the mighty spider?!?!"
                user_answer = gets.chomp
                if (user_answer == "yes")
                    puts "Grab the sword and fight for your life!" 
                elsif 
                    puts "Game over you lose!"
                    File.readlines('gameover.txt') do |line|
                        line
                    end
            end
        elsif 
            "You are locked, go check slack and try again!"

        end #end of troll conditional     
    end
end
puts open_door(pumpkin_choice, user_avatar)


