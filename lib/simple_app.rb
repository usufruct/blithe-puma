class SimpleApp
    def call()
        ['200',
         {'Content-Type' => 'text/plain'},
         ['Hello Puma!']]
    end
end
