class Person
    attr_accessor :happiness, :hygiene, :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(new_happiness)
        @happiness = new_happiness
        if new_happiness < 0
            @happiness = 0
        elsif new_happiness > 10
            @happiness = 10
        end
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene
        if new_hygiene < 0
            @hygiene = 0
        elsif new_hygiene > 10
            @hygiene = 10
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end

    def call_friend(callee)
        self.happiness += 3
        callee.happiness += 3
        return "Hi #{callee.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(callee, topic)
        if topic == "politics"
            self.happiness -= 2
            callee.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            callee.happiness += 1
            return 'blah blah sun blah rain'
        else
            return 'blah blah blah blah blah'
        end
    end
end