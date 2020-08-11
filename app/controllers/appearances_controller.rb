class AppearancesController < ApplicationController

    def index
        @appearancs = Appearance.all
      end
    
    
      def new 
        @appearance = Appearance.new()
      end
    
      def Create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
          redirect_to @appearance
        else
          render 'new'
        end
      end
    
      def show 
        @appearance = Appearance.find(params[:id])
      end

      private 
      def appearance_params
        params.require(:appearance).permit(:rating, :guest_id, :episode_id)
      end
end
