# your code goes here
class Person

    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account 
    

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(happiness)
        @happiness = if happiness > 10
            10
        elsif happiness < 0
            0
        else
            happiness
        end
    end
    def hygiene=(hygiene)
        @hygiene = if hygiene > 10
            10
        elsif hygiene < 0
            0
        else
            hygiene
        end
    end
    def clean?
        self.hygiene > 7
    end
    def happy?
        self.happiness > 7
    end
    def get_paid(amount)
        self.bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(person,topic)
        if topic === "politics"
            self.happiness= @happiness - 2
            person.happiness= person.happiness - 2
            return "blah blah partisan blah lobbyist"
        elsif topic === "weather"
            self.happiness= @happiness + 1
            person.happiness= person.happiness + 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end




end   