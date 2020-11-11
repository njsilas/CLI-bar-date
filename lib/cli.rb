require 'pry'
class Cli
attr_accessor :query
@@chad_responses = ["Nice call!", "Soooo gooood", "Nice, had one last week", "Haven't made one of these since I first started",
 "She's gunna love it", "Used to drink those bad boys back at state", "I'd smash one", "Oh it's one of those nights huh?"]
    def self.start
   @@cash = []
    
   puts "Welcome, please have a seat"
  
   self.got_one_in_mind?
    end
    def self.got_one_in_mind?
        puts "Bartender: Got one in mind?"
        user_input = gets.strip
        nu_drink = (user_input)
        @@chad_responses.sample
        
        #puts "Here is two #{nu_drink.drink}"
    end
    def self.tip
        puts "How much would you like to tip?"
        puts "$1  $2  $3"
        user_input = gets.strip
       
      @@cash << user_input.to_i
        
    end
    def self.cash
        @@cash
    end
    def kicked_out
       if Operator.all.length = 4 && Cli.cash.inject(0, :+) < 8
          puts "Bartender: I'm sorry but i can't serve you two anymore."
          sleep (2)
          puts "Manager: SCRAM!"
          sleep (4)
          self.start
       
        end
        self.start
    end
    def self.first_date_chit_chat
        date_sayings = ["Date: So where do you work?", "Date: Is this your first time here?", "Date: Do you alwasy drink this fast?",
             "Date: I've got work early tomorrow", "Date: I had fun. Lets do this again."]
                date_sayings.shift
    end
end
