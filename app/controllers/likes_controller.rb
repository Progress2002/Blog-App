# class LikesController < ApplicationController
#   def create
#     @user = User.find(params[:user_id])
#     if @user.user_has_liked(params[:post_id])
#       @user.remove_user_like(params[:post_id])
#     else
#       @user.add_user_like(params[:post_id])
#     end
#     # @likes = Like.create(user_id: @user.id, post_id: params[:post_id])
#     redirect_to request.path
#   end

# end
