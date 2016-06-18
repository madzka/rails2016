class IdeasController < ApplicationController
    def index
        @ideas = Idea.all
    end
    def show
        @idea = Idea.find(params[:id])
    end
    def new 
    end
    def create
        idea= Idea.new(idea_params)
        idea.save
        
        redirect_to ideas_path 
    end
    def edit
@idea = Idea.find(params[:id])
    end
    def update
        idea = Idea.find(params[:id]) 
        idea.update(idea_params)
    
        
        redirect_to ideas_path 
    end
    def destroy
        @idea = Idea.find(params[:id])
        @idea.destroy
        
        redirect_to ideas_path
    end
    
    def idea_params
    params.require(:idea).permit(:name, :description, :category_id)
    end
    
end
