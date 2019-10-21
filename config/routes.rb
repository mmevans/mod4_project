Rails.application.routes.draw do
  resources :users, :courses, :assignments, :grades, :schools

  post('/login', to: 'authentication#login')
end
