class Quitanda
    include HTTParty
    format :json
    headers 'Content-Type'=> 'application/json;charset=UTF-8'

    def initialize
        self.class.base_uri "#{$env['base_uri']}"
    end

    def search
        query = {}
        query[:mobile] = 'false'
        query[:tablet] = 'false'
        query[:desktop] = 'true'
        query[:client] = 'false'
        query[:system] = 'false'
        query[:userAgent] = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.182 Safari/537.36'
        query[:userAgent] = '8140b511-8f92-47f3-a4ac-06cda1d5349e'

        self.class.post("/cart", :query => query)
    end
end