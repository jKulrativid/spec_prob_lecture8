Rails.application.routes.draw do
  get 'main/login'
  post 'main/login', to: 'main#somchai'
  get 'main/logout'
  post 'main/logout', to: 'main#nattee'
  resources :scores
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/students/:id/edit_score' => 'students#edit_score'
  # Defines the root path route ("/")
  # root "articles#index"
end
