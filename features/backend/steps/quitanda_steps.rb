When("I search products in Quitanda area") do
    @quitanda = Quitanda.new.search
end

Then("I should see info from Quitanda area successfully") do
    expect(@quitanda.code).to eq 200
    expect(@quitanda["cart"].class).to eq Hash
    expect(@quitanda["cart"]["status"]).to eq 204
    expect(@quitanda["cart"]["message"]).to eq "New empty cart"
end