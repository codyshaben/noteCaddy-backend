Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :courses
      resources :holes
      resources :players
      resources :notes

      post 'addNote', to: 'holes#add_note'
      post 'addCourse', to: 'players#add_course'
      delete 'removeCourse/:course_id', to: 'players#remove_course'
      delete 'removeNote/:note_id', to: 'holes#remove_note'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
