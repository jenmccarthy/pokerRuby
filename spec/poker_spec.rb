require('rspec')
require('poker')

describe("pokerHand") do
  it("will return the correct poker hand for corresponding user input") do
    pokerHand(["1H", "3C", "4S", "2H", "5D"]).should(eq("straight"))
  end
end

