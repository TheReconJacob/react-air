class PropertiesController < ApplicationController
    def new
        @property = Property.new
    end

    def show
        render component: "Property", props: {property: Property.find(params[:id])}, prerender: false
    end

    def create
        user = User.find(params[:user_id])
        user.properties.create(property_params)
        redirect_to user_url(user)
    end

    private

    def property_params
        params.require(:property).permit(:image, :description, :label)
        
    end
end
