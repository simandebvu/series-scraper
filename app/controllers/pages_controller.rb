class PagesController < ApplicationController
    def about 
        @title = "ZESA- The Fuckup"
    end

    def new

    end

    def create
        #render plain: params[:post].inspect
    end
end
