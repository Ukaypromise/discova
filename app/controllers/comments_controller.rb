class CommentsController < ApplicationController
    before_action : authenticate_user!

    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user

        if @comment.save
            redirect_to @comment, notice: 'Comment was successfully created.'
        else
            render :new
        end
    end

    def destroy
        @comment = Comment.find(params[:id])
        @comment.destroy
        redirect_to @comment, notice: 'Comment was successfully destroyed.'
    end

    private
        def comment_params
            params.require(:comment).permit(:body)
        end

end
