class AppearancesController < ApplicationController

    def index
        @appearances = Appearance.all    
    end

    def show
        @appearance = Appearance.find(params[:id])
    end
    


end
