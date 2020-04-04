Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'toppages/index'
  #root to: 'runs#index' 下に変えた
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :runs
  
=begin
  # CRUD
  get  'runs/:id', to: 'runs#show'
  post 'runs', to: 'runs#create'
  put 'runs/:id', to: 'runs#update'
  delete 'runs/:id', to: 'runs#destroy'
  
  # index: showの補助ページ
  get 'runs', to: 'runs#index'
  
  # new: 新規作成ようのフォームページ
  get 'runs/new', to: 'runs#new'
  
  # edit: 更新ようのフォームページ
  get 'runs/:id/edit', to: 'runs#edit'
=end

end
