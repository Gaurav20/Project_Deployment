task :download_tweets => :environment do
Tweet.all  
Tweet.get_latest
end
