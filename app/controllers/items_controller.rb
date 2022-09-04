class ItemsController < ApplicationController
    def create
        @brand = Brand.find(params[:brand_id])
        @item = @brand.items.create(item_params)

        redirect_to brand_path(@brand)
    end

    private
    def item_params
        params.require(:item).permit(:name, :price)
    end
end
