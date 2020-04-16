class ItemsController < ApplicationController
    def index 
        @item = Item.all
        render json: {item: @item}, include: :lists
    end
    def show 
        @item = Item.find(params[:id])
        render json:{item: @item}
    end
    def create 
        @item = Item.create(
            title: params[:title],
            description: params[:description],
            done: params[:done],
            list_id: params[:list_id]
        ) 
        render json: {item: @item}
    end
    
    def update
        @item = Item.find(params[:id])
        
        @item.update(
            title: params[:title],
            description: params[:description],
            done: params[:done]
        )
        render json: @item
    end
    
    def destroy
        @item = Item.find(params[:id])
        @item.destroy
        render status: 200
    end
end
