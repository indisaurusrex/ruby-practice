# calculate the score each hit
# puts "Score so far: <score>"
#
# when gameover, puts outcome
# * If score <= 21, `puts` `You scored: <finalscore>`
#       * e.g. `You scored: 20`
#     * If the player's score is `> 21`, `puts` `You busted with: <finalscore>`
#       * e.g. `You busted with: 25`
#

@points = {
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9,
  "ten" => 10,
  "jack" => 10,
  "queen" => 10,
  "king" => 10,
  "ace" => 11,
}
@hand = []

def random_card
  cards = ["two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "jack", "queen", "king", "ace"]

  cards[rand(13)]
end
# `move`: Asks the player for a move.  If they enter `hit` or `stick`, it returns.  Else it keeps asking.
def move
  # unless we say otherwise, ask for a move
  while true do
    puts "What's your move?"
    input = gets.chomp
    # if its hit, return the new card, the move name and ask again
    if input == "hit"
      return "hit"
    # if its stick, return the move name and stop
    elsif input == "stick"
      return "stick"
      break
    end
  end
end

# `score`: Takes an array of cards and returns the score for the hand as an integer.
def score
  # make a local array that will disappear when not in this method
  tally = []
  # for each of the cards in the hand, add their score to the tally from points
  @hand.each do |card|
    tally.push(@points[card])
  end
  # return the tally of the scores
  return tally.sum
end

# `run_game`: uses the other methods to run a game of Blackjack.
def run_game
  while true do
    if move == "hit"
      @hand.push(random_card)
      puts "Score so far: #{score}"
    else
      if score > 21
        puts "You busted with: #{score}"
      end
      puts "Your score is: #{score}"
      break
    end
  end
end

run_game
