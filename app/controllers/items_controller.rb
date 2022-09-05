class ItemsController < ApplicationController
    def new
        @brand = Brand.find(params[:brand_id])
        @item = @brand.items.new
    end

    def edit
        @brand = Brand.find(params[:brand_id])
        @item = @brand.items.find(params[:id])
    end

    def create
        @brand = Brand.find(params[:brand_id])
        @item = @brand.items.create(item_params)

        redirect_to brand_path(@brand)
    end

    def update
        @brand = Brand.find(params[:brand_id])
        @item = @brand.items.find(params[:id])

        if @item.update(item_params)
            redirect_to brand_path(@brand)
        else
            render 'edit'
        end
    end

    def destroy
        @brand = Brand.find(params[:brand_id])
        @item = @brand.items.find(params[:id])
        @item.destroy

        redirect_to brand_path(@brand)
    end

    private
    def item_params
        params.require(:item).permit(:name, :price)
    end
end
