class CommentsController < ApplicationController
  
  def show
    @article = Article.find(params[:article_id])
  end 
  def create
    @article = Article.find(params[:article_id])

    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)

    # @postid = params[:id]
    # if @comment.save
    #   flash[:notice] = "comment created."
    #   redirect_to '/posts'
    # else
    #   flash[:error] = "Error creating comment."
    #   redirect_to '/posts'
    # end
  end

  def edit
    @article = Article.find(params[:article_id])
    
  end
  def update

    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])

    if @comment.update(comment_params) 
      redirect_to @article
    else
    render :edit
    end
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private
    def comment_params
      params.require(:comment).permit(:commenter, :body, :status)
    end
end
