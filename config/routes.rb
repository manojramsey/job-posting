
Rails.application.routes.draw do

  get 'applicant_dashboard/index'

  get 'employer_dashboard/index'

  post 'applied_jobs/job_apply'

  resources :posts
  root to: 'welcome#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
