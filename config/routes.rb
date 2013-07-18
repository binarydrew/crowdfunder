Crowdfunder::Application.routes.draw do
 resources :projects
 root to: "projects#index"
 resources :users
 resources :sessions, :only => [:new, :create, :destroy]
end
