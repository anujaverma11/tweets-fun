class User < ActiveRecord::Base
  # Take and Parse back data passed by omniauth
  def self.from_omniauth(auth)

    where(provider: auth.provider, uid: auth.uid).first_or_initialize do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = "125604525-RI808N0WppCXQ2hyY2LMihukSkl4k6tDvyzPWQZ"
      user.oauth_secret = "q1PDQCb5B4XhcqIvuqi13tfqwV0zIVENjm7TPbx5mTERe"
      user.save!
    end
  end

  # Sending Tweet
  def tweet(tweet)

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['TWITTER_CONSUMER_KEY']
      config.consumer_secret = ENV['TWITTER_CONSUMER_SECRET']
      config.access_token = ENV['TWITTER_ACCESS_TOKEN']
      config.access_token_secret = ENV['TWITTER_ACCESS_SECRET']
    end
    client.update(tweet)
  end


end

