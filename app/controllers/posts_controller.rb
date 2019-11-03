class PostsController < ApplicationController
  def create
   @user = User.find(params[:home_id])
    @post = @user.posts.create(post_params)
    redirect_to home_profile_path
  end

  def new
    if current_user
    @post = Post.new
  else
    redirect_to root_path
  end
  end

  def update
  end

  def destroy
  end

  def index
     @post = Post.where(:user_id =>params[:home_id]).order(id: :desc)
   
  end

  def show
    @post = Post.find(params[:id])

  end

  def edit
  end

  def post_params
    params.permit(:question,:code)
  end

 def allPost
   
 end

 def vote
   @post = Post.find(params[:post_id])
   if @post.votes[0].blank?
     if params[:vote] == "firstlike"
     @vote =  @post.votes.create(user_id:params[:home_id],voted:"like")
       else
         @vote =  @post.votes.create(user_id:params[:home_id],voted:"dislike")
       end 
     else
        if params[:vote] == "firstlike" || params[:vote] == "like"
         Vote.update(@post.votes[0].id,voted:"like")
         else
          Vote.update(@post.votes[0].id,voted:"dislike")
        end
    end
  end
end
