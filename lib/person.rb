# your code goes here
class Person 
    attr_accessor :bank_account  
    attr_reader :name
    attr_reader :happiness 
    attr_accessor :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    
    def happiness=(level)
        if level > 10
            @happiness = 10
        elsif level < 0
            @happiness = 0            
        else 
            @happiness = level #setter 
        end
    end

    def hygiene=(level)
        if level > 10
            @hygiene = 10
        elsif level < 0
            @hygiene = 0            
        else 
            @hygiene = level #setter 
        end
    end


    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end
        
    def get_paid(salary)
        @bank_account += salary
        if salary == 100
            "all about the benjamins"
        end
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.hygiene=(@hygiene - 3)
        self.happiness=(@happiness + 2)
        '♪ another one bites the dust ♫'
    end

    # def mutual_effect(friend,value,effect)
    #     self.value=(@value + effect)
    #     friend.value=(@value + effect)
    # end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend,topic)
        if topic == 'politics'
            self.happiness=(@happiness - 2)
            friend.happiness=(friend.happiness - 2)
            'blah blah partisan blah lobbyist'
        elsif topic == 'weather'
            self.happiness=(@happiness + 1)
            friend.happiness=(friend.happiness + 1)
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end

    end
        
end
