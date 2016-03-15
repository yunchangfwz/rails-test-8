class PostsController < ApplicationController
  before_action :find_post, only: [:show]

  def show;end

  private
  def post_id
     params.require(:id)
  end

  def find_post
    @post = Post.find(post_id)
  end
end
