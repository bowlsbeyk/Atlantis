Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "static_pages#home"

  #Auth0 Functions
  get '/auth/auth0/callback' => 'auth0#callback'
  get '/auth/failure' => 'auth0#failure'
  get '/auth/logout' => 'auth0#logout'

  #user_pages
  get '/dashboard' => 'user_pages#dashboard'
  get '/user/edit' => 'user_pages#user_edit_info'
  get '/user/update' => 'user_pages#user_update'

  #post_pages
  get '/post/question/new' => 'posts#new_post_question'
  post '/post/question/new' => 'posts#create_post_question'
  get '/post/question/view' => 'posts#view_post_question'

end