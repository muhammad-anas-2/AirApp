Rails.application.routes.draw do
  resources :admins
  resources :teachers
  resources :courses
  resources :colleges do
    resources :addresses, module: :colleges
  end
  resources :hostels do
    resources :addresses, module: :hostels
  end
  resources :students do
    resources :addresses, module:  :students
  end
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
