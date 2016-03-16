class PostsController < ApplicationController

  def show
    @post = Post.find(post_id)
    @comments = @post.comments
  end

  private
  def post_id
     params.require(:id)
  end
end
