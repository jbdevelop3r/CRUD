class CommentsController < ApplicationController
    def create
        @music = Music.find(params[:music_id])
        @comment = @music.comments.create(comment_params)
        redirect_to music_path(@music)
    end

    def show
        @comment = Comment.find(params[:id])
      end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = article.comments.find(params[:id])
        @comment.destroy
        redirect_to music_path(@music)
      end

    private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
