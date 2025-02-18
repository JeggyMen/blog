class CommentsController < ApplicationController
    before_action :get_article

    def index
        @comments = @article.comments
    end

    def new
        @comment = @article.comments.build
    end

    def create
        @comment = @article.comments.build(comments_params)
        if @comment.save
            redirect_to article_comments_path
        else
            render :new
        end
    end

    def show
        @comment = Comment.find(params[:id])
    end

    private

    def get_article
        @article = Article.find(params[:article_id])
    end

    def comments_params
        params.require(:comment).permit(:body, :article_id)
    end
end
