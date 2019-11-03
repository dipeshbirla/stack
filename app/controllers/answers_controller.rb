class AnswersController < ApplicationController
  def index
  end

  def show
  end

  def create
  	@post = Post.find(params[:post_id])
    @answer = @post.answers.create(answer:params[:answer],code:params[:code],user_id:params[:home_id] )
    respond_to do |format|
      format.html { redirect_to home_post_path(current_user.id,@post.id), notice: 'Pony was successfully destroyed.' }
  end
   end
  def new
  end

   def vote
        @answer = Answer.find(params[:answer_id])
   if @answer.votes[0].blank?
     if params[:vote] == "firstlike"
     @vote =  @answer.votes.create(user_id:current_user.id,voted:"like")
       else
         @vote =  @answer.votes.create(user_id:current_user.id,voted:"dislike")
       end 
     else
        if params[:vote] == "firstlike" || params[:vote] == "like"
         Vote.update(@answer.votes[0].id,voted:"like")
         else
          Vote.update(@answer.votes[0].id,voted:"dislike")
        end
    end
  end

  private
  def answers_params
  params.permit(:answer,:code,:home_id)
end

end
