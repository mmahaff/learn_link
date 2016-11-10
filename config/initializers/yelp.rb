require 'yelp'

Yelp.client.configure do |config|
  config.consumer_key = YELP_KEY
  config.consumer_secret = YELP_SECRET
  config.token = YELP_TOKEN
  config.token_secret = YELP_TOKEN_SECRET
end
