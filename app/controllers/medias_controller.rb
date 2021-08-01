class MediasController < ApplicationController
    before_action :authenticate_user!
    def new

    end
    def create
        @media = current_user.medias.build(media_params)
        if @media.save
            redirect_to "/"
        else
            flash[:notice] = @post.errors.messages
            render new_medias_path
        end
    end
    def index
        @username = current_user.username
        @medias = current_user.medias.all
        

    end
    def destroy
        @media = Media.find(params[:id])

        if @media.destroy
            redirect_to "/"
            
        elsif 
            flash[:notice] = "Something went wrong. Media didn't delete"
            redirect_to "/"
        end

    end

    def update_plugged
        @media = Media.find(params[:id])
        @media.plugged = !@media.plugged
        
        @media.date_unplugged << Date.today

        if @media.save
            redirect_to "/"        
        else
            flash[:notice] = "Something went wrong. Media didn't update"
            redirect_to "/"
        end
    end

    def media_params
        params.require(:media).permit(:name, :plugged)
    end

end