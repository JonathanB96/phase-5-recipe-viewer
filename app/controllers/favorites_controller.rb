class FavoritesController < ApplicationController
    def index 
        # favorites = Favorite.where(user_id: params[:id])
        favorites = Favorite.all
        render json: favorites

    end

    def create 
        user = User.find_by(id: session[:user_id])
        if user    
            favorite = Favorite.create(recipe_name: params[:recipe_name], recipe_steps: params[:recipe_steps],
             image_url: params[:image_url], user_id: params[:user_id], cuisine_id: params[:cuisine_id])
            render json: favorite, status: :created  
        else
            render json: {errors: ["unauthorized"]}, status: :unauthorized   
        end 
    end

    def destroy
        
        user = User.find_by(id: session[:user_id])
        if user
            recipe = user.favorites.find(params[:id])
            recipe.destroy
            head  :no_content 
            
        else
            render json: {errors: ["unauthorized"]}, status: :unauthorized   
        end 

        # favorite = Favorite.where("recipe_name LIKE ?", params[:id])
        # favorite.destroy
        # head :no_content   
   

    end
end
