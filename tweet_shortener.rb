# Write your code here.
def word_substituter(tweet)
    dictionary = {
        "hello" => 'hi',
        "to" => '2',
        "two" => '2',
        "too" => '2',
        "for" => '4',
        "four" => '4',
        'be' =>'b',
        'you' => 'u',
        "at" => "@",
        "and" => "&"
    }
    t = []
    tweet.split(" ").each do |i|
        if dictionary.include?(i.downcase)
            dictionary.each do |k, v|
                if i.downcase == k
                    t << v
                end
            end
            else
            t << i
        end
    end
    t.join(" ")
end

def bulk_tweet_shortener(tweet)
    tweet.each do |i|
        puts word_substituter(i)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        word_substituter(tweet)
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        if selective_tweet_shortener(tweet).length > 140
            selective_tweet_shortener(tweet)[1..140]
        end
    else
        tweet
    end
end
