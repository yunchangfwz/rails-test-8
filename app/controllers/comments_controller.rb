class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    if params[:type] == Post.name
      render json: post_comment
    else
      render json: profile_comment
    end
  end

  def profile_comment
    @user = User.find(object_id)
    user_profile = @user.profile
    comment = user_profile.comments.new(message: params[:message], user_id: current_user.id )
    if comment.save
      return  user_profile.reload.comments.to_json(include: :user)
    else
      return comment.errors.full_messages.to_json
    end
  end
  
  def post_comment
    @post = Post.find(object_id)
    comment = @post.comments.new(message: params[:message], user_id: current_user.id )
    if comment.save
      return  @post.reload.comments.to_json(include: :user)
    else
      return comment.errors.full_messages.to_json
    end
  end

  protected

  def object_id 
    params[:object_id]
  end

end
