class PostsController < ApplicationController
  def index
  end

  def new
  end 

  def create
    @post = Post.new(post_params)
    @post.creator = current_user
   
    if @post.save
     
      @post.patients << Patient.find(params[:patient_id])
      flash[:notice] = "Patient account noted"
      redirect_to :back 

    else 
      flash[:error] = "Notes cannot be entered blank"
      redirect_to :back
    end 
  end 

end

  private

  def post_params
    params.require(:post).permit(:description)
    
  end
