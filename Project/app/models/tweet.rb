require 'grackle'

class Tweet < ActiveRecord::Base
  attr_accessible :title, :body, :content, :created

 MY_APPLICATION_NAME = "gauravncirl"  
 
  def self.get_latest
    tweets = client.statuses.user_timeline? :screen_name => MY_APPLICATION_NAME # hit the API
    tweets.each do |t|
      created = DateTime.parse(t.created_at)
      # create the tweet if it doesn't already exist
      unless Tweet.exists?(["created=?", created])
        Tweet.create({:content => t.text, :created => created })
       end
    end
  end
  
  private
  def self.client
    Grackle::Client.new(:auth=>{
      :type=>:oauth,
      :consumer_key=>'iclI0YGrzSrJZaJoV4x2CA',
      :consumer_secret=>'rgi9dqS0MG6I1T90ekveNI7gmOY9bwX4XwJHCtAtTk',
      :token=>"968737536-V6ZYNxT0mJmNZ33DKOrnFbGgczQAxLwfqZC8Oh4L",
      :token_secret=>"6ddfjDM7h3M1dcooTezx3k4j355ZndHjDmEYjpc"
    })

  end
end




