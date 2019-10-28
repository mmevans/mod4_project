Rails.application.routes.draw do
  resources :users, :courses, :assignments, :grades, :schools, :documents, :announcements

  post('/login', to: 'authentication#login')
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
  patch('/courses/:id/enroll', to: 'courses#update2')

  delete('/courses/:id/delete_pending', to: 'courses#delete_pending')
end
