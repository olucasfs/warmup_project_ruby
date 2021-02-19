class Cart
    include HTTParty
    format :json
    headers 'Content-Type'=> 'application/json;charset=UTF-8'

    def initialize
        self.class.base_uri "#{$env['base_uri']}"
    end

    def insert
        body = {}
        body[:addend] = 1
        body[:cartId] = nil
        body[:kind] = 'Product'
        body[:newCart] = true
        body[:productId] = '59161c71cb7257001150eb3e'
        body[:refPage] = 'Detail'

        self.class.post("/cart", :body => body.to_json)
    end
end