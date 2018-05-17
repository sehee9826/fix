class CommentsController < ApplicationController
    def create
        params.permit!
        @article = Article.find(params[:article_id])
        @comment = @article.comments.new(params[:comment])
        
        @comment.save
        redirect_to :back
    end
end
