class ApplicantDashboardController < ApplicationController
  def index
    # @posts = Post.all.where()
    @user_id = current_user.id

    @applied = AppliedJob.where(user_id: @user_id)
    posts_id = []

    @applied.each do |post|
      posts_id.push(post.post_id)
    end

    @unapplied = Post.where.not(id: posts_id)
  end

end
