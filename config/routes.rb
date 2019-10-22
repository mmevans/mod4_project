Rails.application.routes.draw do
  resources :users, :courses, :assignments, :grades, :schools

  post('/login', to: 'authentication#login')
  post 'auth/register', to: 'users#register'
  post 'auth/login', to: 'users#login'
  get 'test', to: 'users#test'
end
