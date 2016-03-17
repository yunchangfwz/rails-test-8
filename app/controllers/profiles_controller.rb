class ProfilesController < ApplicationController
  def index
    @user = User.find(user_id)
    @comments = @user.profile.comments
  end

  private
  def user_id
     params.require(:user_id)
  end
end
