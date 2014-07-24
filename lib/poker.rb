def is_straight(hand)

  result = "straight"

  hand = hand.sort

  hand.each do |card|
    card.chop!
  end

  hand.each_with_index do |card, index|
     if index < hand.length - 1
      if (card.to_i) + 1 == card.to_i
        result
      end
    end
  end
   result
end

def flush(hand)
  result = "flush"

  hand.each_with_index do |card, index|
      if index < hand.length - 1
        if card[-1] == hand[index + 1][-1]
           result
        end
      end
  end
  result
end

def straight_flush(hand)
  hand = hand.sort
  result = "straight flush"

  if is_straight(hand) && flush(hand)
    result
  end
  result
end

def four_kind(hand)
  hand = hand.sort
  result = "four of a kind"

  match_array = []

  hand.each do |card|
    card.chop!
  end

  hand.each_with_index do |card, index|
    if card == (hand[index + 1])
      match_array.push(card)
      if match_array.length == 4
        result
      end
    end
  end
  result
end

def three_kind(hand)
  hand = hand.sort
  result = "three of a kind"

  match_array = []

  hand.each do |card|
    card.chop!
  end

  hand.each_with_index do |card, index|
    if card == (hand[index + 1])
      match_array.push(card)
      if match_array.length == 3
        result
      end
    end
  end
  result
end

def one_pair(hand)
  result = "one pair"

  match_array = []

  hand = hand.sort

  hand.each do |card|
    card.chop!
  end

  hand.each_with_index do |card, index|
    if card == (hand[index + 1])
      match_array.push(card)
      if match_array.length == 2
        result
      end
    end
  end
  result
end

def full_house(hand)
  result = "full house"
  hand = hand.sort

  if three_kind(hand) && one_pair(hand)
    result
  end
  result
end

def two_pair(hand)
  result ="two pair"

  first_match_array = []
  second_match_array = []

  hand.each_with_index do |card, index|
    if card == hand[index + 1]
      first_match_array.slice![index]
    end
  end
  hand.each_with_index do |card, index|
    if card == hand[index + 1]
      second_match_array.slice![index]
    end
  end

  if first_match_array.length == second_match_array.length
    result
  end
  result
end

def poker_hand(hand)

  final_result = "You do not have a good hand :("

  if straight_flush(hand)
  elsif is_straight(hand)
  elsif flush(hand)
  elsif four_kind(hand)
  elsif three_kind(hand)
  elsif one_pair(hand)
  elsif full_house(hand)
  elsif two_pair(hand)
  else
    final_result
  end
end

# suit_count = {"C" => 0, "D" => 0, "H" => 0, "S" => 0}

  # value_count = {"1" => 0, "2" => 0, "3" => 0, "4" => 0, "5" => 0, "6" => 0, "7" => 0, "8" => 0, "9" => 0, "10" => 0, "11" => 0, "12" => 0 "13" => 0, "14" => 0}
