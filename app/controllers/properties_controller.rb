class PropertiesController < ApplicationController
    def new
        @propery = Property.new
    end

    def show
        render component: "Property", props: {property: Property.find(params[:id])}, prerender: false
    end

    def create
        user = User.find(params[:user_id])
        user.property.create
        property  = Property.create(Property_params)
        redirect_to user_url
    end

    private

    def Property_params
        params.require(:property).permit(:image, :description, :label)
        
    end

end

end
