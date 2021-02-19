class Subscription
    include HTTParty
    format :json
    headers 'Content-Type'=> 'application/json;charset=UTF-8'

    def initialize
        self.class.base_uri "#{$env['base_uri']}"
    end

    def search
        self.class.get("/subscription")
    end
end