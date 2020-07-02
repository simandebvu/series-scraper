class CommentsController < ApplicationController
    http_basic_authenticate_with name: "user", password:"12345", only: [:destroy]
    def create
        @show = Show.find(params[:show_id])
        @comment = @show.comments.create(comment_params)
        redirect_to show_path(@show)
    end
     
    def destroy
        @show = Show.find(params[:id])
        @comment = @show.comments.find(params[:id])
        @comment.destroy
        redirect_to shows_path
    end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
end
