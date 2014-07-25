require('rspec')
require('poker')

describe("is_straight?") do
  it("will return the correct poker hand for card values that are sequential") do
    is_straight?(["10H", "11C", "12S", "13H", "14D"]).should(eq(true))
  end

  it('returns false if the hand is not a straight.') do
    is_straight?(["10H", "7C", "12S", "13H", "14D"]).should(eq(false))
  end
end

describe("straight_flush?") do
  it("will return the correct poker hand for values that are sequential and with matching suits") do
    straight_flush?(["10C","13C","11C","12C","14C"]).should(eq(true))
  end

  it('returns false if the hand is not a straight flush.') do
    straight_flush?(["10H", "10C", "12S", "13H", "14D"]).should(eq(false))
  end
end

describe("flush?") do
  it("will return the correct poker hand for cards with all the same suits") do
    flush?(["14C","11C","10C","6C","3C"]).should(eq(true))
  end

  it('returns false if the hand is not a flush.') do
    flush?(["10H", "10C", "12S", "13H", "14D"]).should(eq(false))
  end
end

describe("four_kind?") do
   it("will return the correct poker hand for cards with four of a kind") do
    four_kind?(["6C","6D","6H","6S","14C"]).should(eq(true))
  end

  it('returns false if the hand is not a four of a kind.') do
    four_kind?(["10H", "10C", "12S", "13H", "14D"]).should(eq(false))
  end
end

describe("three_kind?") do
  it("will return the correct poker hand for cards with three of a kind") do
    three_kind?(["3C","3D","3H","12S","2S"]).should(eq(true))
  end

  it('returns false if the hand is not a three of a kind.') do
    three_kind?(["10H", "10C", "12S", "13H", "14D"]).should(eq(false))
  end
end

describe("one_pair?") do
  it("will return the correct poker hand for cards with one pair") do
    one_pair?(["2D","2H","12C","10H","6C"]).should(eq(true))
  end

  it('returns false if the hand is not a one pair') do
    one_pair?(["9H", "7C", "12S", "2H", "5D"]).should(eq(false))
  end
end

describe("full_house?") do
  it("will return the correct poker hand for cards with 3 values and 2 values the same") do
    full_house?(["5S","5H","5D","8S","8H"]).should(eq(true))
  end

  it('returns false if the hand is not a full house.') do
    full_house?(["10H", "10C", "12S", "13H", "14D"]).should(eq(false))
  end
end

describe("two_pair?") do
  it("will return the correct poker hand for cards with two pair") do
    two_pair?(["13C","13D","9H","9D","11H"]).should(eq(true))
  end

  it('returns false if the hand is not a straight.') do
    two_pair?(["10H", "10C", "12S", "13H", "14D"]).should(eq(false))
  end
end

# describe("poker_hand") do
#   it("will return the hand you are holding") do
#     poker_hand(["3C","3D","3H","12S","2S"]).should(eq("three of a kind"))
#   end
# end




