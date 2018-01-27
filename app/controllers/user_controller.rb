class UserController < ApplicationController
 before_action :authenticate_user!

 def index
   @users = User.all
 end

 def new
   @post = Post.new
 end

 def create
   if current_user.posts.create!(user_id: current_user.id, opinion:params_post[:opinion])
     redirect_to root_path 
   end
 end

 private

 def params_post
   params.require(:post).permit(:opinion)
 end
end
