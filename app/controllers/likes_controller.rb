class LikesController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @post = Post.find(params[:post_id])

    if @user.user_has_liked?(@post, @user )
      @user.remove_user_like(@post, @user )
      puts 'Unlike'
    else
      @user.add_user_like(@post, @user )
      puts 'Like'
    end
    # @likes = Like.create(user_id: @user.id, post_id: params[:post_id])
    redirect_to request.path
  end

end
