class DashboardController < ApplicationController

before_filter :authenticate_user!
 
def index    
@tweet = Tweet.new
end

def user_tweet
    require "rubygems"
    require "twitter"
 
    # Certain methods require authentication. To get your Twitter OAuth credentials,
    # register an app at http://dev.twitter.com/apps
    Twitter.configure do |config|
      config.consumer_key = ' << your consumer key >>'
      config.consumer_secret =  ' << your consumer secret >>'
      config.oauth_token = ' << your access token >> '
      config.oauth_token_secret = '<< your access token secret >>'
    end
 
    # Initialize your Twitter client
    client = Twitter::Client.new
 
    # Post a status update
    client.update("I just posted a status update via the Twitter Ruby Gem !")
    redirect_to request.referer, :notice => 'Tweet successfully posted'
end



end
