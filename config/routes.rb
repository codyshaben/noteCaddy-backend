Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses
      resources :holes
      resources :players

      post 'addCourse', to: 'players#add_course'
      delete 'removeCourse/:course_id', to: 'players#remove_course'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
