class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id]) 
    @topic = Summary.find(params[:summary_id])
  end

  def new
    @topic = Summary.find(params[:summary_id])
    @post = Post.new
    authorize @post
  end

  def edit
   @summary = Summary.find(params[:summary_id])
   @post = Post.find(params[:summary_id])

     private

  def post_params
    params.require(:post).permit(:title, :body)
  end
  
  def create
    @topic = Summary.find(params[:summary_id])
    @post = Post.new(post_parms)
    @post.user = current_user
    @post.summary = @summary
    authorize @post
  if @post.save
    flash[:notice] = "Post was saved."
    redirect_to [@summary, @post]
  else
    flash[:error] = "There was an error saving the post. Please try again."
    render :new
  end
 end

  def edit
    @topic = Summary.find(params[:summary_id])
    @post = Post.find(params[:id])
    authorize @summary
  end

  def update
    @summary = Summary.find(params[:summary_id])
    authorize @post
    if @Post.new(post_parms)
    flash[:notice] = "Post was updated."
    redirect_to [@summary, @post]
  else
    flash[:error] = "There was an error saving the post. Please try again."
    render :new
    end
  end
end


