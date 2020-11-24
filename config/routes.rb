Rails.application.routes.draw do

  resources :student_teachers
  resources :students
  resources :teachers
  root 'welcome#home'
  get 'welcome/home'

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
