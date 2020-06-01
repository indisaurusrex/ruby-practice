test_tweets = [
  "This president sucks!",
  "I hate this Blank House!",
  "I can't believe we're living with such a bad leadership. We were so foolish",
  "President Presidentname is a danger to society. I hate that he's so bad – it sucks."
  ]

banned_phrases = ["sucks", "bad", "hate", "foolish", "danger to society"]

censored_tweets = Array.new
blank = String.new
tweets = test_tweets.length

while banned_phrases.length > 0 do
  #choose the phrase
  blank = banned_phrases[-1]
  # for each tweet, split by phrase and join by
  # censored then push to new array
  test_tweets.each do |tweet|
    censored_tweets.push(tweet.split(blank).join("CENSORED"))
  end
  # move new tweets over and clear new array
  test_tweets, censored_tweets = censored_tweets, Array.new
  # get rid of last phrase
  banned_phrases.pop
end

puts censored_tweets
puts test_tweets
