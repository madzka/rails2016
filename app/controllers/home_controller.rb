class HomeController < ApplicationController
def index 
@idea_count = Idea.count 
end 

end
