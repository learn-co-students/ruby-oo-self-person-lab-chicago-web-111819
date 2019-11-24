class Person
    
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(number)
        @happiness = number
       self.happiness = 10 if self.happiness > 10
       self.happiness = 0 if self.happiness < 0
    end

    def hygiene=(number)
        @hygiene = number
        self.hygiene = 10 if self.hygiene > 10
        self.hygiene = 0 if self.hygiene < 0
    end

    def happy?
        self.happiness > 7
    end

    def clean?
        self.hygiene > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
    [friend, self].each {|friend| friend.happiness += 3 }
    "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
        [self, person].each {|person| person.happiness -= 2 }
        "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, person].each {|person| person.happiness += 1 }
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
     end
end
end