class SimpleApp
    def call(env)
        ['200',
         {'Content-Type' => 'text/plain'},
         ['Hello Puma!']]
    end
end
