# Write your code here.

def dictionary 
  word_hash = {
    "hello" => "hi",
    "Hello" => "hi",
    "to" => "2",
    "To" => "2",
    "two"=> "2", 
    "Two"=> "2", 
    "too"=> "2",
    "Too"=> "2", 
    "for" => "4",
    "For" => "4",
    "four" => "4", 
    "Four" => "4",
    "be" => "b", 
    "Be" => "b",
    "you" => "u", 
    "You" => "u", 
    "at" => "@", 
    "At" => "@",
    "and" => "&",
    "And" => "&"
  }
end 

def word_substituter(string)
  array = Array.new 
  array_new = Array.new 
  array = string.split()
  word_hash = dictionary
  array.map do |words|
    if word_hash.keys.include?(words)
      words = word_hash[words]
    end 
    array_new.push(words)
  end
  array_new.join(' ')
end 
  
def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end 
end 

def selective_tweet_shortener(tweet)
    tweet_characters = tweet.split("")
    if tweet_characters.size > 140
      puts word_substituter(tweet)
      word_substituter(tweet)
    elsif tweet_characters.size < 140
      puts tweet
      tweet
    end 
end 

def shortened_tweet_truncator(tweet)
    shortened_tweet = selective_tweet_shortener(tweet)
    if shortened_tweet.length > 140
      puts shortened_tweet.slice(0,140)
      shortened_tweet.slice(0,140)
    elsif shortened_tweet.size < 140
      puts shortened_tweet
      shortened_tweet
    end 
end 