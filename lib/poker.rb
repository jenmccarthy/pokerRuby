def pokerHand(hand)
  result = ""
  hand = hand.sort

  straight = nil

  hand.each_with_index do |card, index|
    if index < hand.length - 1
      if card[0].to_i == (hand[index + 1][0].to_i - 1)
        straight = true
      else
        straight = false
      end
    end
  end
  if straight
    'straight'
  end
end


pokerHand(["1H", "3C", "4S", "2H", "5D"])


#user inputs a string of cards which we want to become an array with 5 elements
#["card1", "card2", "card3", "card4", "card5"]


#card1[0] is the numerical part of the string and for the majority of poker hands, only the value is
#essential to know the optimal poker hand

#so we will isolate the 0th element of each card, push that into a new array and sort it.
#at which point we can see if the cards increment by one (straight) or have things in common (two/three of a kind), etc

#then to isolate the suit, loop through the last element of the array (in this case position 1) and push those into a new array
#we will sort this information to see patterns amongst the suits

#now we have three arrays--one with card values and one with card suits and one with the original user input



