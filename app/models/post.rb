class Post < ApplicationRecord
  belongs_to :user, -> { where(employer: true) }
  has_many :applied_jobs

  def applicants
    applicants = []
    applied_jobs.each do |application|
      applicants.push(application)
    end
    return applicants
  end
end
