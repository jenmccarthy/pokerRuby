def is_straight?(hand)

  hand.each {|card| card.chop!}

  hand = hand.collect {|card| card.to_i}

  hand = hand.sort

  result = nil

  hand.each_with_index do |card, index|
    if index < hand.length - 1
      if (card + 1) == hand[index + 1]
        result = true
      else
        result = false
        break
      end
    end
  end
  result
end

def flush?(hand)
  result = nil

  if hand[0].slice(-1) == hand[1].slice(-1) && hand[1].slice(-1) == hand[2].slice(-1) && hand[2].slice(-1) == hand[3].slice(-1) && hand[3].slice(-1) == hand[4].slice(-1)
    result = true
  else
    result = false
  end

  # hand.each_with_index do |card, index|
    # if card.slice(-1) == hand[index + 1].slice(-1) && card.slice(-1) == hand[index + 1].slice(-1)
    # if index < hand.length - 1
    #   if card[-1] == hand[index + 1][-1]
    #     result = true
    #   else
    #     result = false
    #   end
    # end
  # end
  result
end


def straight_flush?(hand)
  result = nil

  if  (flush?(hand) && is_straight?(hand))

    result = true
  else
    result = false
  end
   result
end

def four_kind?(hand)

  result = nil

  match_array = []

  hand.each {|card| card.chop!}

  hand = hand.collect {|card| card.to_i}

  hand = hand.sort

  hand.each_with_index do |card, index|
    if card == (hand[index + 1])
      match_array.push(card)
      if match_array.length == 3
        result = true
      else
        result = false
      end
    end
  end
  result
end

def three_kind?(hand)
  result = nil
  match_array = []

  hand.each {|card| card.chop!}

  hand = hand.collect {|card| card.to_i}

  hand = hand.sort

  hand.each_with_index do |card, index|
    if card == (hand[index + 1])
      match_array.push(card)
      if match_array.length == 2
        result = true
      else
        result = false
      end
    end
  end
  result
end

def one_pair?(hand)

  match_array = []

  hand.each {|card| card.chop!}

  hand = hand.collect {|card| card.to_i}

  hand = hand.sort

  result = false

  hand.each_with_index do |card, index|
    if card == (hand[index + 1])
      match_array.push(card)
      if match_array.length == 1
        result = true
      else
        result
      end
    end
  end
  result
end

def full_house?(hand)
  result = nil
  puts three_kind?(hand)

  if (one_pair?(hand) && three_kind?(hand))
    result = true
  else
    result = false
  end
  result
end
full_house?(["5S","5H","5D","8S","8H"])

def two_pair?(hand)

  result = nil

  hand.each {|card| card.chop!}

  hand = hand.collect {|card| card.to_i}

  hand = hand.sort

  match_array = []

  hand.each_with_index do |card, index|
    if card == hand[index + 1]
      match_array.push(card)
      if (match_array.length == 2) && (match_array[0] != match_array[1])
        result = true
      else
        result = false
      end
    end
  end
  result
end

# def poker_hand(hand)

#   final_result = "You do not have a poker hand :("

#   if is_straight(hand)
#     "straight"
#   elsif flush(hand)
#     "flush"
#   elsif straight_flush(hand)
#     "straight flush"
#   elsif four_kind(hand)
#     "four of a kind"
#   elsif three_kind(hand)
#     "three of a kind"
#   elsif one_pair(hand)
#     "one pair"
#   elsif full_house(hand)
#     "full house"
#   elsif two_pair(hand)
#     "two pair"
#   else
#     final_result
#   end
# end
