class PropertiesController < ApplicationController
    def new
        @property = Property.new
    end

    def show
        render component: "Property", props: {property: Property.find(params[:id])}, prerender: false
    end

    def create
        user = User.find(params[:user_id])
        property = Property.create(property_params)
        property.user_id = user.id
        property.image.attach(params[:image])
        redirect_to user_url(user)
    end

    private

    def property_params
        params.require(:property).permit(:image, :description, :label, :price)    
    end
end
