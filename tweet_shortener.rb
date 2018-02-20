# Write your code here.
require 'pry'
def dictionary
  dictionary = {"hello"=>"hi","to"=>"2", "two"=>"2", "too"=>"2", "for"=>"4", "For"=>"4","four"=>"4", "be"=>"b", "you"=>"u", "at"=> "@", "and"=>"&" }
end
def word_substituter(tweet)
  tweet.split(" ").collect{|e| dictionary.fetch(e,e)}.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweet.collect {|k| puts word_substituter(k)}
end

def selective_tweet_shortener(tweet)
  tweet.length<140 ? tweet : tweet[1...140]
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet).length<140 ? tweet : "#{tweet[0...137]}..."
end
