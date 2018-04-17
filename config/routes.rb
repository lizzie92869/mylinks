Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: "welcome#home"
  get '/lists/:id/high_priority', to: 'lists#high_priority', as: :high_priority_lists
  get '/lists/:id/recent', to: 'lists#recent', as: :recent_lists
  get '/lists/:id/old', to: 'lists#old', as: :old_lists

  


  resources :lists do
  	
    resources :links

  end

end
