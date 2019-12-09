class PropertiesController < ApplicationController
    skip_before_action :authorise

    def index
        properties = Property.all.map {|p|

            {
                :location => p.location,
                :description => p.description,
                :image => url_for(p.image),
                :user => User.find(p.user_id)
            }
        }
        render component: "Property", props: {properties: properties}, prerender: false
    end

    def show

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
        params.permit(:description, :location, :price, :user_id)    
    end
end
