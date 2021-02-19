When("I search in Subscrition area") do
    @subscription = Subscription.new.search
end

Then("I should see info from Subscription area successfully") do
    expect(@subscription.code).to eq 200
    expect(@subscription.parsed_response.class).to eq Hash
end