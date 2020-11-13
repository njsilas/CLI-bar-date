require 'pry'
class Cli
    attr_accessor  :drink, :ingredient, :additional_ingredient
        @@chad_responses = ["Nice call!", "Soooo gooood", "Nice, had one last week", "Haven't made one of these since I first started",
        "She's gunna love it", "Used to drink those bad boys back at state", "I'd smash one", "Oh it's one of those nights huh?"]
    def start
        @@cash = []
    
        puts "Welcome, please have a seat"
        
        got_one_in_mind?
    end  
    def got_one_in_mind?
        puts "Bartender: Got one in mind?"
        user_input = gets.strip
        api = Api.new(user_input)
       
            details = api.fetch_drink
            puts "Bartender: Here is your #{details.drink}. it has #{details.ingredient} and a little #{details.additional_ingredient}."
        
        puts "Bartender: Wanna know how I made it?"
        nu_input = gets.strip
        if nu_input == "yes"
            puts "Bartender: #{details.instructions}"
        elsif
            nu_input == "no"
            got_one_in_mind?

       
        end
    end
    def tip
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
        
    end
    def first_date_chit_chat
        date_sayings = ["Date: So where do you work?", "Date: Is this your first time here?", "Date: Do you alwasy drink this fast?",
             "Date: I've got work early tomorrow", "Date: I had fun. Lets do this again."]
        date_sayings.shift
    end
    def self.sorry
        puts "Bartender: ain't got that for ya"
       got_one_in_mind?
    end

end
