class DashboardController < ApplicationController

before_filter :authenticate_user!
 
def index

@tweets= Tweet.all

    

end


end




