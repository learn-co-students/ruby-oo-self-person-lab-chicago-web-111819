class Person

    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene

    POINTS_MAX = 10
    POINTS_MIN = 0
    ABOVE_BAR = 7

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 || (10 if happiness > POINTS_MAX)
        @hygiene = 8
    end

    def happiness=(hap)
        if hap > POINTS_MAX
            @happiness = POINTS_MAX
        elsif hap < POINTS_MIN
            @happiness = POINTS_MIN
        else
            @happiness = hap
        end
    end

    def hygiene=(hyg)
        if hyg > POINTS_MAX
            @hygiene = POINTS_MAX
        elsif hyg < POINTS_MIN
            @hygiene = POINTS_MIN
        else
            @hygiene = hyg
        end
    end

    def clean?
        if @hygiene > ABOVE_BAR
            return true
        end
        return false
    end
        
    def happy?
        if @happiness > ABOVE_BAR
            return true
        end
        return false
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        @hygiene += 4
        self.hygiene=(@hygiene)
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @happiness += 2
        @hygiene -= 3
        self.hygiene=(@hygiene)
        self.happiness=(@happiness)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(second_person, convo_topic)
        topics = {
            :pol => ["politics", "blah blah partisan blah lobbyist"],
            :wea => ["weather", "blah blah sun blah rain"],
            :nei => ["neither", "blah blah blah blah blah"]
        }

        final_output = topics[:nei][0]
        
        # using case statement 
        case convo_topic
            when topics[:pol][0]
                # both sadder by 2 points
                second_person.happiness -= 2
                self.happiness -= 2
                final_output = topics[:pol][1]
            when topics[:wea][0]
                # both happier by 1 point
                second_person.happiness += 1
                self.happiness += 1
                final_output = topics[:wea][1]
            else topics[:nei][0]
                final_output = topics[:nei][1]
            end

        return final_output
    end



end
