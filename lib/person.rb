class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    
    def initialize (name, happiness=25, hygiene=8)
        @name = name
        @bank_account = happiness
        @happiness = hygiene
        @hygiene = 8
    end
    def bank_account=(value)
        @bank_account=(value)
        @bank_account=value
    end
    def happiness=(value)
        @happiness=(value)
        @happiness=value.clamp(0, 10)
    end
    def hygiene=(value)
        @higiene=(value)
        @hygiene=value.clamp(0,10)
    end
    def clean?
        @higiene >7
    end
    def happy?
        @happiness>7
    end
    def get_paid(amount)
        @bank_account += amount
        "all about the benjamins"
    end
    def take_bath
        @hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness +=3
        self.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if (topic == "politics")
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif (topic == "weather")
            self.hapiness += 1
            friend.hapiness += 1
            "blah blah sun blah rain"
        else "blah blah blah blah blah"
        end
    end


end
#paul= Person.new
#Paul.name("Paul")
# Paul.name
