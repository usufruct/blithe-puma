require_relative 'markov_talker'

class SimpleApp
    def initialize()
        @talker = MarkovTalker.new
    end
        
    def call(env)
        case env['REQUEST_PATH']
        when '/herman'
        ['200',
         {'Content-Type' => 'text/plain'},
         [@talker.melville_me()]]
        else
        ['200',
         {'Content-Type' => 'text/plain'},
         ['Hello Puma!']]
        end
    end
end
