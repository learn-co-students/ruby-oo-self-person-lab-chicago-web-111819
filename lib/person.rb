class Person
    attr_accessor :bank_account
    attr_reader :name
    attr_writer :happiness, :hygiene

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @bank_account = bank_account
        @name = name
        @happiness = happiness
        @hygiene = hygiene
    end
    
    def check_level(instance_variable)
        if instance_variable > 10
            return instance_variable = 10
        elsif instance_variable < 0
            return instance_variable = 0
        else 
            return instance_variable
        end
    end

    def happiness
        check_level(@happiness)
    end

    def hygiene
        check_level(@hygiene)
    end

    def happy?
        if @happiness > 7
            return true
        else
            return false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account = @bank_account + salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return 'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end
    end
end