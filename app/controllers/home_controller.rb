class HomeController < ApplicationController
  def index
  	if current_user
      redirect_to home_profile_path
    else
      redirect_to new_user_session_path
    end
    
  end

 def profile
  @user = User.find(current_user.id)
 end

 def allpost
   @post=Post.where.not(user_id: current_user.id).order(id: :desc)
 end

end
