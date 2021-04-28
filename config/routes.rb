Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies
  root :to => redirect('/movies')
  
  get '/find_movies_same_director/:id', to: 'movies#find_movies_same_director', as: 'find_movies_same_director'
end
