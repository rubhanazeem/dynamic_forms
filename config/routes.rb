Rails.application.routes.draw do

	resources :polls
  get 'polls/new'

  get 'polls/create'

  root 'polls#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
