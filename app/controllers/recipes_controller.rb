class RecipesController < ApplicationController
    def index
        recipes = Recipe.all 
        render json: recipes
    end

    def show
       
        recipe = Recipe.find(params[:id])
        

        render json: recipe,  status: :ok
    
    end  

    def create 

        user = User.find_by(id: session[:user_id])
        if user
    
            recipe = Recipe.create(name: params[:name], 
            steps: params[:steps], image_url: params[:image_url],
            user_id: params[:user_id],
            cuisine_id: Cuisine.find_by("name LIKE ?", params[:cuisine]).id)
            render json: recipe, status: :created
            
        else
            render json: {errors: ["unauthorized"]}, status: :unauthorized   
        end 
        
    end

end
