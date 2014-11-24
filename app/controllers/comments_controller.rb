class CommentsController < ApplicationController

  def new
  end 

  def create
    @comment = Comment.new(comment_params)
    @comment.creator = current_user
    
     if @comment.save

       @post = Post.find(params[:post_id])
       @post.comments << @comment

      flash[:notice] = "Patient account noted"
      redirect_to :back 

    else 
      flash[:error] = "Comment body blank"
      redirect_to :back
    end 

  end 

end

  private

  def comment_params
    params.require(:comment).permit(:body)
    
  end