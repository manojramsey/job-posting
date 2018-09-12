class EmployerDashboardController < ApplicationController
  def index
    @applicants = []
    posts = Post.where(user_id: current_user.id)
    posts.each do |post|
      @applicants.push(post.applicants)
    end
    @applicants = @applicants.flatten
  end
end
