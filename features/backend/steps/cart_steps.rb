When("I select a product to insert it into my cart") do
    @cart = Cart.new.insert
end

Then("I would like to see it into my cart successfully") do
    expect(@cart.code).to eq 200
    expect(@cart.parsed_response.class).to eq Hash
end