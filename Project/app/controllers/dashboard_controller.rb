class DashboardController < ApplicationController

before_filter :authenticate_user!
 
def index
# empty database
Tweet.delete_all

# get from twitter
Tweet.get_latest

# store them in a instance var to display
@tweets= Tweet.all

    

end


end




