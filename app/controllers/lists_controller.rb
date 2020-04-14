class ListsController < ApplicationController
    def index 
        @list = List.all
        render json: {list: @list}, include: :items
    end
    def show 
        @list = List.find(params[:id])
        render json:{list: @list}, include: :items
    end
    def create 
        @list = List.create(
            title: params[:title],
            description: params[:description],
            done: params[:done],
            user_id: params[:user_id]
        )
        render json: {list: @list}
    end

    def update
        @list = List.find(params[:id])
        
        @list.update(
            title: params[:title],
            description: params[:description],
            done: params[:done]
        )
        render json: @list
    end
    
    def destroy
        @list = List.find(params[:id])
        @list.destroy
        render status: 200
    end
end
