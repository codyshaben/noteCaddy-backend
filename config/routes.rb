Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resource :players, only: [:create]
      #login
      get '/courses', to: 'courses#index'
      post '/login', to: 'auth#login'
      get '/auto_login', to: 'auth#auto_login'
      get '/user_is_authed', to: 'auth#user_is_authed'

      # post '/addNote', to: 'holes#add_note'
      # post '/addCourse', to: 'players#add_course'
      # delete '/removeCourse/:course_id', to: 'players#remove_course'
      # delete '/removeNote/:note_id', to: 'holes#remove_note'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
