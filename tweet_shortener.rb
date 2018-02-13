require "pry"
# Write your code here.
def dictionary
  dictionary = {
    hello: "hi", to: "2", two: "2", too: "2", for: "4", four: "4", be: "b", you: "u", at: "@", and: "&"
  }
end

def word_substituter(tweet)
  word_list = tweet.split
  word_list.each_with_index do |word, i|
    dictionary.each do |key, substitution|
      if word.downcase == "#{key}"
        word_list[i] = substitution
      end
    end
  end
  word_list.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  output = ""
  if tweet.length > 140
    output += word_substituter(tweet)
  else output += tweet
  end
  output
end

def shortened_tweet_truncator(tweet)
  output = ""
  output += selective_tweet_shortener(tweet)
  if output.length > 140
    output = output.slice(1..140)
  end
  output
end
