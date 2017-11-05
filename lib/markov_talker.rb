require 'marky_markov'

class MarkovTalker
    def initialize()
        @herman_markov = MarkyMarkov::Dictionary.new('./data/moby_dick')
    end
    
    def melville_me()
        @herman_markov.generate_1_sentence
    end
end
